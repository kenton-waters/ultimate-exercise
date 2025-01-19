{-# OPTIONS_GHC -fplugin=LiquidHaskell #-}

module Output.LilyPond
    ( generateScore
    ) where

import System.Process
import Constants
import Util
import Control.Monad

type Filename = String
type Contents = String

{-@ generateScore :: {fn:Filename | isValidLyFilename fn} -> Contents -> IO () @-}
generateScore :: Filename -> Contents -> IO ()
generateScore lyFilename contents = do

    unless (null contents) $  -- forces computation of lazy contents
        writeFile (lilyPondDirPath++lyFilename) contents
    
    invokeLilyPond lyFilename


{-@ invokeLilyPond :: {fn:Filename | isValidLyFilename fn} -> IO () @-}
invokeLilyPond :: Filename -> IO ()
invokeLilyPond lyFilename = callCommand $
                                "lilypond --output '"++outputPath++"' "
                                    ++ lilyPondDirPath++lyFilename

