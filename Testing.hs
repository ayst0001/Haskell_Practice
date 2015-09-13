{-# LANGUAGE TransformListComp #-}
import GHC.Exts (groupWith, the)
import Data.List (permutations)
import System.IO


lengthList :: Int -> [t] -> Bool   --This takes a int and a list as input

-- Return true when the int equals the length of the list, otherwise return false
lengthList n (x:xs) = 
	if (n == length(x:xs))
		then True
	else False

{- 
To judge if all elements in a list is positive
The type od the argument should be both Num and Ord.
calling x>0 makes it must be Num and Ord
However, if only comparing two elements(a>b instead a>0), the arguments only have to be Ord
And the order of execution actually matters in terms of efficiency
-}
all_pos :: (Num a, Ord a) => [a] -> Bool
all_pos [] = True
all_pos (x:xs) = x > 0 && all_pos xs

-- If the type of this function is not specified, it will return the most general one
-- Which is Num a => [t] -> a, the output is not necessarily an Int
-- This can be tried by using :t with and without the type declaration
len :: [t] -> Int
len [] = 0
len (x:xs) = 1 + len xs

-- Not a lot of functions come with this type declaration, which returns a Bool from a list 
-- regardless what type is in the list
isEmpty :: [t] -> Bool
isEmpty [] = True
isEmpty (_:_) = False -- This actually contains the instance of (_:[])

-- Writing a program in terminal with nano
-- used control + o to save without exiting it
-- The type declearation is made to suit all sorts of inputs
sumList :: (Num t) => [t] -> t
sumList [] = 0
sumList (x:xs) = x + sumList xs

-- A program to evaluate if one is over weight by bmi
weightCheck w h
 |bmi < 18.5 = "You're underweighted"
 |bmi < 24.9 = "You're pretty healthy"
 |bmi < 30 = "You're slightly overweighted"
 |otherwise = "You're considered obese"
 where bmi = w/h/h*10000

-- Alternatively using if syntax, which is not used a lot in Haskell
countUpTo n =
 if n == 0 
 then []
 else countUpTo(n-1) ++ [n]



-- Computing all possibilities, containing invalid ones
redundantState :: [[String]]
redundantState = sequence [note1,note2,note3]
note1 = ["C1","D1","E1","F1","G1","A1","B1"
		,"C2","D2","E2","F2","G2","A2","B2"
		,"C3","D3","E3","F3","G3","A3","B3"]
note2 = note1
note3 = note2	

-- Function to get rid of the ones with repetitive notes
allState :: [[String]]
allState = antiMultiOrder (antiRepeat redundantState)

-- Function to get rid of the different order of same combinations
antiMultiOrder :: [[String]] -> [[String]]
antiMultiOrder [] = []
antiMultiOrder (x:xs) = 
	if (notExist x xs) then x:(antiMultiOrder xs)
	else antiMultiOrder xs
	
notExist :: [String] -> [[String]] -> Bool
notExist [a,b,c] [] = True
notExist [a,b,c] (y:ys) =
	if (identical [a,b,c] y) then False
	else (notExist [a,b,c] ys)

identical :: [String] -> [String] -> Bool
identical [a,b,c] [d,e,f] = 
	if (((a==d)&&(b==e)&&(c==f))
		||((a==d)&&(b==f)&&(c==e))
		||((a==e)&&(b==d)&&(c==f))
		||((a==e)&&(b==f)&&(c==d))
		||((a==f)&&(b==d)&&(c==e))
		||((a==f)&&(b==e)&&(c==d))) then True
	else False

antiRepeat :: [[String]] -> [[String]]
antiRepeat [] = []
antiRepeat (x:xs) = 
	if (containSame x) then (antiRepeat xs)
	else x:(antiRepeat xs)

containSame [x,y,z] =
	if ((x==y) || (y==z) || (z==x)) then True
	else False
