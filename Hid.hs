module Main where

import LexHid
import ParHid
import AbsHid
import Interpreter

import Control.Monad
import Control.Monad.Error
import Control.Monad.State
import Control.Monad.Writer
import ErrM
import System.Environment

main = do
  args <- getArgs
  case args of
    [] -> do
      s <- getContents
      putStrLn (interpret s)
    (x:xs) -> do
      s <- readFile x
      putStrLn (interpret s)
  return ()

interpret :: String -> String
interpret s = case pProgram (myLexer s) of
  Ok e -> let ((eith,l),_) = runState (runWriterT (runErrorT (transProgram e))) emptyMyState in
    (foldl (\acc x-> acc ++ "\n" ++ x) "" l) ++ case eith of
      Right () -> "\nProgram finished with no errors."
      Left s -> "\nProgram finished with some error:\n" ++ s
  Bad s -> s
