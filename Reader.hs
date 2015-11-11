module Reader where

import System.IO (openFile,IOMode(ReadMode))
import qualified Data.Text.Lazy.IO (hGetContents,putStrLn)

main :: IO()
main = do
	let raw = Data.Text.Lazy.IO.hGetContents =<< openFile "test.html" ReadMode
	raw >>= Data.Text.Lazy.IO.putStrLn	


