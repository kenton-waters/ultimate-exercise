module Output.LilyPond
    ( invokeLilyPond
    ) where

import System.Process
import Constants
import Util


type FileName = String

invokeLilyPond :: FileName -> IO ()
invokeLilyPond lyFileName = do
    validateLyFilename lyFileName

    callCommand $
        "lilypond --output '"++outputPath++"' "
            ++ lilyPondDirPath++lyFileName
