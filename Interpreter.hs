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

data Func = Func [Decl] [Stm] Value deriving Show

type Env = Map.Map Var Loc
type Store = Map.Map Loc Value
type FEnv = Map.Map Var Func
data MyState = MyState {env :: Env, store :: Store, fenv :: FEnv} deriving Show

type MyMonad = ExceptT String (WriterT [String] (State MyState))

type Result = MyMonad

emptyEnv :: Env
emptyEnv = Map.empty

emptyStore :: Store
emptyStore = Map.empty

emptyFEnv :: FEnv
emptyFEnv = Map.empty

emptyMyState :: MyState
emptyMyState = MyState {env = emptyEnv, store = emptyStore, fenv = emptyFEnv}


newLoc :: Result Loc
newLoc = do
  cenv <- gets env
  cstore <- gets store
  if null cstore then return 0 else return ((fst (Map.findMax cstore)) + 1)

addName :: Var -> Loc -> Result ()
addName x l = do
  cenv <- gets env
  cstore <- gets store
  cfenv <- gets fenv
  put (MyState (Map.insert x l cenv) cstore cfenv)

getFunc :: Var -> Result Func
getFunc x = do
  cfenv <- gets fenv
  case Map.lookup x cfenv of
    Just f -> return f
    Nothing -> throwError ("Function " ++ x ++ " undeclared")

getLoc :: Var -> Result Loc
getLoc x = do
  cenv <- gets env
  case Map.lookup x cenv of
    Just n -> return n
    Nothing -> throwError ("Variable " ++ x ++ " undeclared")

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
  cfenv <- gets fenv
  put (MyState cenv (Map.insert x v cstore) cfenv)
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

prepareState :: [Decl] -> [Value] -> Result ()
prepareState (fdecl:decls) (fval:vals) = do
  transDecl fdecl
  cenv <- gets env
  cstore <- gets store
  cfenv <- gets fenv
  mid <- let Dec t myid = fdecl in transMyIdent myid
  cloc <- getLoc mid
  put (MyState cenv (Map.insert cloc fval cstore) cfenv)
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
  Prog (code:codes) -> do
    --debugPrintState
    transCode code
    transProgram (Prog codes)
  Prog [] -> return ()

transCode :: Code -> Result ()
transCode x = case x of
  FCode function -> transFunction function
  SCode stm -> transStm stm

-- why does it even have a type?
transFunction :: Function -> Result ()
transFunction x = case x of
  Fun type_ myident decls stms -> do
    defret <- transType type_
    cfenv <- gets fenv
    mid <- transMyIdent myident
    case Map.lookup mid cfenv of
      Just f -> throwError ("Function with name " ++ mid ++ " already declared")
      Nothing -> do
        cenv <- gets env
        cstore <- gets store
        put (MyState cenv cstore (Map.insert mid (Func decls stms defret) cfenv))
        return ()

transDecl :: Decl -> Result ()
transDecl x = case x of
  Dec type_ myident -> do
    nval <- transType type_
    mid <- transMyIdent myident
    idloc <- newLoc
    addName mid idloc
    setVal idloc nval
    return ()
    --debugPrintState

transStm :: Stm -> Result ()
transStm x = do
  rstore <- gets store
  case Map.lookup (-1) rstore of
    Nothing -> case x of
      SDecl decl -> transDecl decl
      SExp exp -> do
        transExp exp
        return ()
      SBlock stms -> do
        oldenv <- gets env
        cfenv <- gets fenv
        transStms stms
        -- WE CAN STOP STORE OVERGROWTH BY JUST ASSIGNING VALUES TO EXISTING FIELDS IN OLD STORE!
        cstore <- gets store
        put (MyState oldenv cstore cfenv)
      SWhile exp stm -> do
        v <- transExp exp
        let ValGeorge b = v in
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
        cfenv <- gets fenv
        cstore <- gets store
        put (MyState cenv (Map.insert (-1) v cstore) cfenv)
      SIf exp stm -> do
        v <- transExp exp
        let ValGeorge b = v in
          if b then transStm (SBlock [stm]) else return ()
      SIfElse exp stm1 stm2 -> do
        v <- transExp exp
        let ValGeorge b = v in
          if b then transStm (SBlock [stm1]) else transStm (SBlock [stm2])
      SFor exp1 exp2 exp3 stm -> do
        transExp exp1
        transStm (SWhile exp2 (SBlock [stm, (SExp exp3)]))
      SPrt exp -> do
        v <- transExp exp
        case v of
          ValInt xv -> tell [(show xv)]
          ValGeorge bv -> tell [(show bv)]
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
  EMod exp1 exp2 -> applyIntOperator exp1 exp2 (rem)
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
  Call myident exps -> do
    mid <- transMyIdent myident
    f <- getFunc mid
    oldenv <- gets env
    let Func decls stms defret = f in
      if length decls < length exps then throwError ("Too many arguments in " ++ mid ++ " function call") else do
        vals <- mapM transExp exps
        prepareState decls vals
        transStm (SBlock stms)
        cstore <- gets store
        cfenv <- gets fenv
        retval <- case Map.lookup (-1) cstore of
          Just v -> return v
          Nothing -> return defret
        put (MyState oldenv (Map.delete (-1) cstore) cfenv)
        return retval
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

transType :: Type -> Result Value
transType x = case x of
  TInt -> return (ValInt 0)
  TBool -> return (ValGeorge False)
