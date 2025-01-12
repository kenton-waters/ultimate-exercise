module Main (main) where

import Output.LilyPond
import Constants

main :: IO ()
main = invokeLilyPond lilyPondFileName
