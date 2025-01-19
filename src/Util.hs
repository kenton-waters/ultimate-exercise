{-# OPTIONS_GHC -fplugin=LiquidHaskell #-}

module Util
    ( isValidLyFilename
    , validateLyFilename
    ) where

import Constants
import Text.Regex.PCRE

{-@ measure isValidLyFilename :: s:String -> Bool @-}
isValidLyFilename :: String -> Bool
isValidLyFilename = (=~ lilyPondFileRegex) -- Does the string match the regex pattern?

{-@ assume validateLyFilename :: s:String -> Maybe {r:String | s==r && isValidLyFilename s} @-}
validateLyFilename :: String -> Maybe String
validateLyFilename s
    | isValidLyFilename s = Just s
    | otherwise = Nothing