module Lib
    ( invokeLilyPond
    ) where

import System.Process

type FileName = String

invokeLilyPond :: FileName -> IO ()
invokeLilyPond lyFileName = callCommand $ "lilypond --output 'output/' output/lilypond/" ++ lyFileName
