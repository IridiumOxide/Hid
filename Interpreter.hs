module Interpreter where

-- Haskell module generated by the BNF converter

import AbsHid
import ErrM
import Control.Monad
import Control.Monad.Except
import Control.Monad.State
import Control.Monad.Writer
import qualified Data.Map as Map

data Value = ValInt Integer | ValGeorge Bool deriving (Show, Eq, Ord)
type Var = String
type Loc = Integer

type Env = Map.Map Var Loc
type Store = Map.Map Loc Value
data MyState = MyState {env :: Env, store :: Store} deriving Show

type MyMonad = ExceptT String (WriterT [String] (State MyState))

type Result = MyMonad

emptyEnv :: Env
emptyEnv = Map.empty

emptyStore :: Store
emptyStore = Map.empty

emptyMyState :: MyState
emptyMyState = MyState {env = emptyEnv, store = emptyStore}

-- might have to change this for local variables
newLoc :: Result Loc
newLoc = do
  cenv <- gets env
  cstore <- gets store
  if null cstore then return 0 else return ((fst (Map.findMax cstore)) + 1)

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
    Nothing -> throwError (x ++ " undeclared")

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

applyBoolOperator :: Exp -> Exp -> (Value -> Value -> Bool) -> Result Value
applyBoolOperator exp1 exp2 f = do
  v1 <- transExp exp1
  v2 <- transExp exp2
  return (ValGeorge (f v1 v2))

applyIntOperator :: Exp -> Exp -> (Integer -> Integer -> Integer) -> Result Value
applyIntOperator exp1 exp2 f = do
  v1 <- transExp exp1
  v2 <- transExp exp2
  return (ValInt (let {ValInt x1 = v1; ValInt x2 = v2} in f x1 x2))

failure :: a -> Result Value
failure x = do
  throwError "Not implemented!"
  return (ValInt 0)

failureN :: a -> Result ()
failureN x = do
  throwError "Not implemented!"
  return ()

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
  MyIdent string -> do
    return string

transProgram :: Program -> Result ()
transProgram x = case x of
  Prog (code:codes) -> do
    debugPrintState
    transCode code
    transProgram (Prog codes)
  Prog [] -> do
    tell (["Finished interpreting program."])
    return ()

-- TODO!!!!
transCode :: Code -> Result ()
transCode x = case x of
  FCode function -> failureN x
  SCode stm -> transStm stm

-- TODO!!!!
transFunction :: Function -> Result Value
transFunction x = case x of
  Fun type_ myident decls stms -> failure x

transDecl :: Decl -> Result ()
transDecl x = case x of
  Dec type_ (firstident:myidents) -> do
    nval <- transType type_
    mid <- transMyIdent firstident
    idloc <- newLoc
    addName mid idloc
    tell (["New loc: " ++ (show idloc)])
    setVal idloc nval
    debugPrintState
    transDecl (Dec type_ myidents)
  Dec type_ [] -> do
    return ()

-- TODO!!!!
transStm :: Stm -> Result ()
transStm x = case x of
  SDecl decl -> transDecl decl
  SExp exp -> do
    transExp exp
    return ()
  SBlock stms -> do
    oldenv <- gets env
    transStms stms
    cstore <- gets store
    put (MyState oldenv cstore)
  SWhile exp stm -> do
    v <- transExp exp
    let ValGeorge b = v in
      if b then do
        transStm stm
        transStm (SWhile exp stm)
      else
        return ()
  SReturn exp -> failureN x
  SIf exp stm -> failureN x
  SIfElse exp stm1 stm2 -> failureN x
  SFor exp1 exp2 exp3 stm -> failureN x
  SPrt exp -> do
    v <- transExp exp
    case v of
      ValInt xv -> tell [(show xv)]
      ValGeorge bv -> tell [(show bv)]

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
    sv <- let {ValInt xcval = cval; ValInt xev = ev} in (let nval = (aop xcval xev) in setVal idloc (ValInt nval))
    return sv
  ELt exp1 exp2 -> applyBoolOperator exp1 exp2 (<)
  EGt exp1 exp2 -> applyBoolOperator exp1 exp2 (>)
  ELe exp1 exp2 -> applyBoolOperator exp1 exp2 (<=)
  EGe exp1 exp2 -> applyBoolOperator exp1 exp2 (>=)
  EEq exp1 exp2 -> applyBoolOperator exp1 exp2 (==)
  ENeq exp1 exp2 -> applyBoolOperator exp1 exp2 (/=)
  EAdd exp1 exp2 -> applyIntOperator exp1 exp2 (+)
  ESub exp1 exp2 -> applyIntOperator exp1 exp2 (-)
  EMul exp1 exp2 -> applyIntOperator exp1 exp2 (*)
  EDiv exp1 exp2 -> applyIntOperator exp1 exp2 (div)
  EInc exp -> do
    v <- transExp exp
    return (ValInt (let ValInt x = v in x + 1))
  EDec exp -> do
    v <- transExp exp
    return (ValInt (let ValInt x = v in x - 1))
  EUmin exp -> do
    v <- transExp exp
    return (ValInt (let ValInt x = v in -x))
  ENeg exp -> do
    v <- transExp exp
    return (ValGeorge (let ValGeorge b = v in not b))
  EPreIn myident -> do
    mid <- transMyIdent myident
    idloc <- getLoc mid
    cval <- getVal idloc
    nval <- let ValInt xcval = cval in (setVal idloc (ValInt (xcval + 1)))
    return nval
  EPreDe myident -> do
    mid <- transMyIdent myident
    idloc <- getLoc mid
    cval <- getVal idloc
    nval <- let ValInt xcval = cval in (setVal idloc (ValInt (xcval - 1)))
    return nval
  EPstIn myident -> do
    mid <- transMyIdent myident
    idloc <- getLoc mid
    cval <- getVal idloc
    nval <- let ValInt xcval = cval in (setVal idloc (ValInt (xcval + 1)))
    return cval
  EPstDe myident -> do
    mid <- transMyIdent myident
    idloc <- getLoc mid
    cval <- getVal idloc
    nval <- let ValInt xcval = cval in (setVal idloc (ValInt (xcval - 1)))
    return cval
  -- TODO (functions)!!!!!!!!!!
  Call myident exps -> failure x
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

transType :: Type -> Result Value
transType x = case x of
  TInt -> do
    return (ValInt 0)
  TBool -> do
    return (ValGeorge False)
