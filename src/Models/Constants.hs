module Models.Constants
    ( outputPath
    , lilyPondDirPath
    , lilyPondFileName
    ) where

outputPath :: String
outputPath = "output/"

lilyPondDirPath :: String
lilyPondDirPath = outputPath ++ "lilypond/"

lilyPondFileName :: String
lilyPondFileName = "test.ly"