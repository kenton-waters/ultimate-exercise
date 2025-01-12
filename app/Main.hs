module Main (main) where

import Lib

main :: IO ()
main = invokeLilyPond "test.ly"
