module Interpreter where

-- Haskell module generated by the BNF converter

import AbsHid
import ErrM
import Control.Monad
import Control.Monad.Error
import Control.Monad.State
import Control.Monad.Writer
import qualified Data.Map as Map

data Value = ValInt Integer | ValGeorge Bool | ValFun Func deriving Show
type Var = String
type Loc = Integer

data Func = Func [Decl] [Stm] Env deriving Show

type Env = Map.Map Var Loc
type Store = Map.Map Loc Value
data MyState = MyState {env :: Env, store :: Store} deriving Show

type MyMonad = ErrorT String (WriterT [String] (State MyState))

type Result = MyMonad

emptyEnv :: Env
emptyEnv = Map.empty

emptyStore :: Store
emptyStore = Map.empty

emptyMyState :: MyState
emptyMyState = MyState {env = emptyEnv, store = emptyStore}

toIntVal :: Value -> Result Value
toIntVal value = case value of
  ValInt v -> return (ValInt v)
  ValGeorge b -> if b then return (ValInt 1) else return (ValInt 0)
  ValFun f -> throwError("Can't convert functions to integers")

toGeorgeVal :: Value -> Result Value
toGeorgeVal value = case value of
  ValInt v -> if v == 0 then do return (ValGeorge False) else return (ValGeorge True)
  ValGeorge b -> return (ValGeorge b)
  ValFun f -> throwError("Can't convert functions to booleans")

toFunctionVal :: Value -> Result Value
toFunctionVal value = case value of
  ValInt v -> throwError("Can't use integers as functions")
  ValGeorge b -> throwError("Can't use booleans as functions")
  ValFun f -> return (ValFun f)

newLoc :: Result Loc
newLoc = do
  cenv <- gets env
  cstore <- gets store
  if Map.null cstore then return 0 else return ((fst (Map.findMax cstore)) + 1)

addName :: Var -> Loc -> Result ()
addName x l = do
  cenv <- gets env
  cstore <- gets store
  put (MyState (Map.insert x l cenv) cstore)

getLoc :: Var -> Result Loc
getLoc x = do
  cenv <- gets env
  case Map.lookup x cenv of
    Just n -> return n
    Nothing -> throwError ("Name " ++ x ++ " undeclared")

getVal :: Loc -> Result Value
getVal x = do
  cstore <- gets store
  case Map.lookup x cstore of
    Just v -> return v
    Nothing -> throwError ("A variable somehow has no value")

setVal :: Loc -> Value -> Result Value
setVal x v = do
  cstore <- gets store
  cenv <- gets env
  put (MyState cenv (Map.insert x v cstore))
  return v

-- converts booleans to integers, so (2 == true) is false
applyBoolOperator :: Exp -> Exp -> (Integer -> Integer -> Bool) -> Result Value
applyBoolOperator exp1 exp2 f = do
  v1 <- transExp exp1
  v2 <- transExp exp2
  ValInt iv1 <- toIntVal v1
  ValInt iv2 <- toIntVal v2
  return (ValGeorge (f iv1 iv2))

applyIntCmpOperator :: Exp -> Exp -> (Integer -> Integer -> Bool) -> Result Value
applyIntCmpOperator exp1 exp2 f = do
  v1 <- transExp exp1
  v2 <- transExp exp2
  ValInt iv1 <- toIntVal v1
  ValInt iv2 <- toIntVal v2
  return (ValGeorge (f iv1 iv2))

applyIntOperator :: Exp -> Exp -> (Integer -> Integer -> Integer) -> Result Value
applyIntOperator exp1 exp2 f = do
  v1 <- transExp exp1
  v2 <- transExp exp2
  ValInt iv1 <- toIntVal v1
  ValInt iv2 <- toIntVal v2
  return (ValInt (f iv1 iv2))

prepareState :: [Decl] -> [Value] -> Result ()
prepareState (fdecl:decls) (fval:vals) = do
  transDecl fdecl
  cenv <- gets env
  cstore <- gets store
  mid <- let Dec myid = fdecl in transMyIdent myid
  cloc <- getLoc mid
  put (MyState cenv (Map.insert cloc fval cstore))
  prepareState decls vals
prepareState (fdecl:decls) [] = do
  transDecl fdecl
  prepareState decls []
prepareState [] [] = return ()

debugPrintState :: Result ()
debugPrintState = do
  penv <- gets env
  pstore <- gets store
  tell [(show penv) ++ (show pstore)]

transStms :: [Stm] -> Result ()
transStms (stm:stms) = do
  transStm stm
  transStms stms
transStms [] = return ()

transMyIdent :: MyIdent -> Result String
transMyIdent x = case x of
  MyIdent string -> return string

transProgram :: Program -> Result ()
transProgram x = case x of
  SCode (stm:stms) -> do
    --debugPrintState
    transStm stm
    transProgram (SCode stms)
  SCode [] -> return ()

transFunction :: Function -> Result ()
transFunction x = case x of
  Fun myident decls stms -> do
    mid <- transMyIdent myident
    idloc <- newLoc
    addName mid idloc
    cenv <- gets env
    setVal idloc (ValFun (Func decls stms cenv))
    return ()

transDecl :: Decl -> Result ()
transDecl x = case x of
  Dec myident -> do
    mid <- transMyIdent myident
    idloc <- newLoc
    addName mid idloc
    setVal idloc (ValInt 0)
    return ()
    --debugPrintState

transStm :: Stm -> Result ()
transStm x = do
  rstore <- gets store
  case Map.lookup (-1) rstore of
    Nothing -> case x of
      SFun function -> transFunction function
      SDecl decl -> transDecl decl
      SExp exp -> do
        transExp exp
        return ()
      SBlock stms -> do
        oldenv <- gets env
        transStms stms
        -- Garbage collector incoming in JUNE ̶2̶0̶1̶6̶  2018
        cstore <- gets store
        put (MyState oldenv cstore)
      SWhile exp stm -> do
        v <- transExp exp
        ValGeorge b <- toGeorgeVal v
        if b then do
          transStm (SBlock [stm])
          transStm (SWhile exp stm)
        else
          return ()
      -- return will set -1th variable in store to the return value.
      -- statements will not be executed while it's set.
      SReturn exp -> do
        v <- transExp exp
        cenv <- gets env
        cstore <- gets store
        put (MyState cenv (Map.insert (-1) v cstore))
      SIf exp stm -> do
        v <- transExp exp
        ValGeorge b <- toGeorgeVal v
        if b then transStm (SBlock [stm]) else return ()
      SIfElse exp stm1 stm2 -> do
        v <- transExp exp
        ValGeorge b <- toGeorgeVal v
        if b then transStm (SBlock [stm1]) else transStm (SBlock [stm2])
      SFor exp1 exp2 exp3 stm -> do
        transExp exp1
        transStm (SWhile exp2 (SBlock [stm, (SExp exp3)]))
      SPrt exp -> do
        v <- transExp exp
        case v of
          ValInt xv -> tell [(show xv)]
          ValGeorge bv -> tell [(show bv)]
          ValFun fv -> tell [(show fv)]
    Just n -> return ()

transExp :: Exp -> Result Value
transExp x = case x of
  EAss myident exp -> do
    mid <- transMyIdent myident
    idloc <- getLoc mid
    ev <- transExp exp
    sv <- setVal idloc ev
    return sv
  EArAss myident arithassignop exp -> do
    mid <- transMyIdent myident
    idloc <- getLoc mid
    ev <- transExp exp
    aop <- transArithAssignOp arithassignop
    cval <- getVal idloc
    ValInt icval <- toIntVal cval
    ValInt iev <- toIntVal ev
    sv <- let nval = (aop icval iev) in setVal idloc (ValInt nval)
    return sv
  ELt exp1 exp2 -> applyIntCmpOperator exp1 exp2 (<)
  EGt exp1 exp2 -> applyIntCmpOperator exp1 exp2 (>)
  ELe exp1 exp2 -> applyIntCmpOperator exp1 exp2 (<=)
  EGe exp1 exp2 -> applyIntCmpOperator exp1 exp2 (>=)
  EEq exp1 exp2 -> applyBoolOperator exp1 exp2 (==)
  ENeq exp1 exp2 -> applyBoolOperator exp1 exp2 (/=)
  EAdd exp1 exp2 -> applyIntOperator exp1 exp2 (+)
  ESub exp1 exp2 -> applyIntOperator exp1 exp2 (-)
  EMul exp1 exp2 -> applyIntOperator exp1 exp2 (*)
  EDiv exp1 exp2 -> applyIntOperator exp1 exp2 (div)
  EMod exp1 exp2 -> applyIntOperator exp1 exp2 (rem)
  EInc exp -> do
    v <- transExp exp
    ValInt iv <- toIntVal v
    return (ValInt (iv + 1))
  EDec exp -> do
    v <- transExp exp
    ValInt iv <- toIntVal v
    return (ValInt (iv - 1))
  EUmin exp -> do
    v <- transExp exp
    ValInt iv <- toIntVal v
    return (ValInt (-iv))
  ENeg exp -> do
    v <- transExp exp
    ValGeorge b <- toGeorgeVal v
    return (ValGeorge (not b))
  EPreIn myident -> do
    mid <- transMyIdent myident
    idloc <- getLoc mid
    cval <- getVal idloc
    ValInt icval <- toIntVal cval
    nval <- setVal idloc (ValInt (icval + 1))
    return nval
  EPreDe myident -> do
    mid <- transMyIdent myident
    idloc <- getLoc mid
    cval <- getVal idloc
    ValInt icval <- toIntVal cval
    nval <- setVal idloc (ValInt (icval - 1))
    return nval
  EPstIn myident -> do
    mid <- transMyIdent myident
    idloc <- getLoc mid
    cval <- getVal idloc
    ValInt icval <- toIntVal cval
    nval <- setVal idloc (ValInt (icval + 1))
    return cval
  EPstDe myident -> do
    mid <- transMyIdent myident
    idloc <- getLoc mid
    cval <- getVal idloc
    ValInt icval <- toIntVal cval
    nval <- setVal idloc (ValInt (icval - 1))
    return cval
  Call myident exps -> do
    mid <- transMyIdent myident
    idloc <- getLoc mid
    mf <- getVal idloc
    ValFun (Func decls stms fenv) <- toFunctionVal mf
    oldenv <- gets env
    if length decls < length exps then throwError ("Too many arguments in " ++ mid ++ " function call") else do
      vals <- mapM transExp exps
      bstore <- gets store
      put (MyState fenv bstore)
      prepareState decls vals
      transStm (SBlock stms)
      cstore <- gets store
      retval <- case Map.lookup (-1) cstore of
        Just v -> return v
        Nothing -> return (ValInt 0)
      put (MyState oldenv (Map.delete (-1) cstore))
      return retval
  ELambda decls stms -> do
    cenv <- gets env
    return (ValFun (Func decls stms cenv))
  EVar myident -> do
    mid <- transMyIdent myident
    idloc <- getLoc mid
    cval <- getVal idloc
    return cval

transArithAssignOp :: ArithAssignOp -> Result (Integer -> Integer -> Integer)
transArithAssignOp x = case x of
  AssignAdd ->  return (+)
  AssignSubt -> return (-)
  AssignMult -> return (*)
  AssignDiv ->  return (div)
  AssignMod -> return (rem)
