module Main where

import LexHid
import ParHid
import AbsHid
import Interpreter

import Control.Monad
import Control.Monad.Except
import Control.Monad.State
import Control.Monad.Writer
import ErrM

main = do
  s <- getContents
  putStrLn (interpret s)
  return ()

interpret :: String -> String
interpret s = let Ok e = pProgram (myLexer s) in
  let ((eith,l),_) = runState (runWriterT (runExceptT (transProgram e))) emptyMyState in
    (foldl (\acc x-> acc ++ "\n" ++ x) "" l) ++ case eith of
      Right () -> "\nProgram finished with no errors."
      Left s -> "\nProgram finished with some error:\n" ++ s
