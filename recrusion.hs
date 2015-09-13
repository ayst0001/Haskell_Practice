import Data.List
import System.IO

factorial :: Int -> Int

-- define process by recursion, like A0 =1, and An = n * (An-1)
factorial 0 = 1
factorial n = n * factorial(n-1) 

-- This is actually equal to:
prodFact n = product [1..n]

-- To apply conditions:
isOdd :: Int -> Bool
isOdd n
	| n `mod` 2 == 0 = False
	| otherwise = True
	
-- A more reasonable example of conditions
whatGrade :: Int -> String
whatGrade n
	| (0<=n) && (n<50) = "Fail"
	| (50<=n) && (n<60) = "Pass"
	| (60<=n) && (n<70) = "3rd class honor"
	| (70<=n) && (n<80) = "2nd class honor"
	| (80<=n) && (n<=100) = "first class honor"
	| otherwise = "input error, please try again"
	
-- intermedia parameters can be calculated by "where" statement
shootingPercentage :: Double -> Double -> String
shootingPercentage attempts hits
	| percentage < 0.30 = "You are a poor shooter"
	| percentage < 0.40 = "You are a decent shooter"
	| percentage < 0.50 = "You are a quality shooter"
	| otherwise = "You are a fantastic shooter"
	where percentage = hits/attempts
	
-- Get the first letter of a word
getFirstLetter :: String -> String
getFirstLetter [] = "This String is Empty"
getFirstLetter all@(x:xs) = "The first letter in " ++ all ++ " is " ++ [x]

-- functions can be called in other functions, and used in recursion
times4 :: Int -> Int
times4 x = x * 4
multBy4 :: [Int] -> [Int] 
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs

-- Another example to check if two strings are equal
areStringsEq :: [Char] -> [Char] -> Bool
areStringsEq[][] = True
areStringsEq (x:xs)(y:ys) = (x==y) && areStringsEq xs ys
areStringsEq _ _ = False

-- Functions can be passed into a function declaration as a variable
doMult :: (Int->Int) ->Int 
doMult func = func 3
num3Times4 = doMult times4
-- "doMult times4" means times4 3 here

-- Functions can also be the result of a function, like
getAddFunc :: Int -> (Int->Int)
getAddFunc x y = x + y
addThree = getAddFunc 3
threePlusList = map addThree [1..5]
-- In this instance, we created a "addThree" function, by passing parameter 3 into function
-- "getAddFunc". The function can then be used with no problem
-- It's actually an equivalent of "addThree x = x+3"