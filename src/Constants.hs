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
lilyPondFileContents = "\\version \"2.24.4\" \\new Voice \\with { \\remove Note_heads_engraver \\consists Completion_heads_engraver } { \\omit TupletNumber \\omit TupletBracket \\time 2/4  \\clef bass  \\tuplet 2/1 { c4. d } c \\tuplet 1/1 { g4 } g a a g2 d d d d d d d }"