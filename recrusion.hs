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