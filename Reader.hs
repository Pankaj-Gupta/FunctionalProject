module Reader where

import System.IO (openFile,IOMode(ReadMode))
import qualified Data.Text.Lazy.IO (hGetContents,putStrLn)
import Text.Parsec
import Text.ParserCombinators.Parsec.Char
import Control.Applicative ((<$>))
--import Text.Parsec.String
--import FunctionalProject.DataType

main :: IO()
main = do
	let raw = Data.Text.Lazy.IO.hGetContents =<< openFile "test.html" ReadMode
	raw >>= Data.Text.Lazy.IO.putStrLn


data Tree = Leaf String | Node [Tree a]
			deriving (Show)

parseTree :: Parser Tree
parseTree = node <|> leaf
	where 
		node = Node <$> between (char '<') (char '>') $many parseTree
    	leaf = Leaf <$> many1 (noneOf "<>")

 --	parseTest parseGroups raw2
{-nodes :: Tree -> [Tree]
nodes (Leaf _) = []
nodes t@(Node ts) = t : concatMap nodes ts

instance Show Tree where
  showsPrec d (Leaf x) = showString x
  showsPrec d (Node xs) = showString "(" . showList xs . showString ")"
    where
      showList [] = id
      showList (x:xs) = shows x . showList xs

parseGroups :: Parser [String]
parseGroups = map show . nodes <$> parseTree

-}

{-}
sentence :: Parser[Data.Text.Text]
sentence = do {
	man
	words <- sepBy1 word separato
	return words
}
separator :: Parser ()
separator = skipMany1 (space <|> char ’,’)
-}
--constructTree :: String -> Tree a
--constructTree [] = NullTree
--constructTree (x:y:xs) | x == '<' =  
{-constructTree (x:xs)	| x=='<' 	=   
						| True		= 


parens :: Parser String
parens = do {
	string "<"
}
-}

