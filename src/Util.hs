module Util
    ( validateLyFilename
    ) where

import Constants
import Text.Regex.PCRE
import Control.Monad
import Control.Exception

validateLyFilename :: String -> IO ()
validateLyFilename s = unless (s =~ lyFileRegex :: Bool)
    $ throwIO $ PatternMatchFail $ "Invalid LilyPond filename: " ++ s