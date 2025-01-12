module Constants
    ( outputPath
    , lilyPondDirPath
    , lilyPondFileName
    , lilyPondFileRegex
    , lilyPondFileContents
    ) where

type RegexPattern = String
lilyPondFileRegex :: RegexPattern
lilyPondFileRegex = "\\A([0-9]|[A-Z]|[a-z]|_)([0-9]|[A-Z]|[a-z]|_|-)*\\.ly\\Z"

outputPath :: String
outputPath = "output/"

lilyPondDirPath :: String
lilyPondDirPath = outputPath ++ "lilypond/"

lilyPondFileName :: String
lilyPondFileName = "test.ly"

lilyPondFileContents :: String
lilyPondFileContents = "{ \\time 2/4  \\clef bass  c4 c g g a a g2 d d d d d d d }"