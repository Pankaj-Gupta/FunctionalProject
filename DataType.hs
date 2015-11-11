module DataType where

data Tree a = 	NullTree
				| Node a [Tree a]
				deriving (Show)

empty = NullTree