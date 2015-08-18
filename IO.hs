import Data.List
import System.IO

-- Entry point of this file
main = do
	putStrLn "What's your name"
	name <- getLine
	putStrLn ("Hello " ++ name)