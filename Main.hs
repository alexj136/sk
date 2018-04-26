module Main where

import System.Environment (getArgs)
import SK
import Lexer
import Parser

main :: IO ()
main = do
    args <- getArgs
    putStrLn $ show $ eval $ parse $ alexScanTokens $ args !! 0
