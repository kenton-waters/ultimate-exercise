module Main (main) where

import Output.LilyPond
import Models.Constants

main :: IO ()
main = invokeLilyPond lilyPondFileName
