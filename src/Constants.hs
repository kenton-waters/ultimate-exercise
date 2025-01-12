module Constants
    ( outputPath
    , lilyPondDirPath
    , lilyPondFileName
    , lyFileRegex
    ) where

type RegexPattern = String
lyFileRegex :: RegexPattern
lyFileRegex = "\\A([0-9]|[A-Z]|[a-z]|_)([0-9]|[A-Z]|[a-z]|_|-)*\\.ly\\Z"

outputPath :: String
outputPath = "output/"

lilyPondDirPath :: String
lilyPondDirPath = outputPath ++ "lilypond/"

lilyPondFileName :: String
lilyPondFileName = "test.ly"