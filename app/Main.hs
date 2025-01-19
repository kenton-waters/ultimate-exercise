{-# OPTIONS_GHC -fplugin=LiquidHaskell #-}

module Main (main) where

import Output.LilyPond
import Constants
import Util

main :: IO ()
main = case validateLyFilename lilyPondFileName of
        Just s -> generateScore s lilyPondFileContents
        Nothing -> return ()
