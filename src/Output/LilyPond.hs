module Output.LilyPond
    ( invokeLilyPond
    ) where

import System.Process
import Models.Constants

type FileName = String

invokeLilyPond :: FileName -> IO ()
invokeLilyPond lyFileName = callCommand $
    "lilypond --output '"++outputPath++"' "
        ++ lilyPondDirPath++lyFileName
