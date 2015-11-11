module DataType where

data Tree = Leaf String 
			| Node [Tree a]
			deriving (Show)
