import Data.List
import System.IO

-- function declaration
addMe :: Int -> Int -> Int
-- funcName Param1 Param2 = operations (or returned value)
addMe x y = x + y 

-- Also we can define a function without a function declaration
-- Haskell will figure out
-- In this case, datatype is not specified, so it should work for floats as well
sumMe x y = x + y

-- Tuples can be used in function definitions too
addTuple :: (Int,Int) -> (Int,Int) -> (Int,Int)
addTuple (x1,y1) (x2,y2) = (x1+x2,y1+y2)

-- conditions can be used as filters
whatAge :: Int -> String
whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You can drink"
whatAge x = "Nothing important"