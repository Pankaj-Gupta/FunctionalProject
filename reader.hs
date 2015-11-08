module Downloader where

import Network.Download

main = do
	doc <- openURI "http://haskell.org"
	print doc
	



