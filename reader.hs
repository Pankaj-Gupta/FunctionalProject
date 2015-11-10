module Reader where

import System.IO
import Data.List
import Data.Char
import Data.Functor

main :: IO()
main = do
	let filename = "test.html"
	--fileName <- getLine
	doc <- getContents fileName ReadMode
	--raw <- fmap (map cleaner) (hGetContents inputHandle)
	print doc
	



