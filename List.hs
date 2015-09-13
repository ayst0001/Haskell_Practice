{-
This is the test code about lists
-}

import Data.List
import System.IO

-- Definition(multiple ways) of lists
sampleList1 = [2,3,5,8,13]
sampleList2 = 21 : 34: 55 : 89 :[]
zeroToTen = [0..10]
evenList = [2,4..20]
mod3Plus1List = [1,4..22]
letterList = ['A'..'Z']

--infintList (rarely used)
infint2 = repeat 2
infintPow10 = [10,20..]

multiList = [ [1,2] , [2,3] , [3,4] ]

-- Basic calculations of lists()
listCombine = sampleList1 ++ sampleList2
sampleList3 = 1 : 1 : listCombine

-- Other operators can be applied to a list
length3 = length sampleList3  
reverse3 = reverse sampleList3
isEmpty3 = null sampleList3
thirdElement = sampleList3 !! 2
firstElement = head sampleList3
lastElement = last sampleList3
everyButLast = init sampleList3
firstThree = take 3 sampleList3
loseFirstThree = drop 3 sampleList3
is21InList = elem 21 sampleList3
maxValue = maximum sampleList3
minValue = minimum sampleList3
sumList = sum sampleList3
productList = product sampleList3
many2s = take 10 (repeat 2)
many3s = replicate 10 3
cycleList = take 10 (cycle sampleList1)
timesTwo = [ x*2 | x<-sampleList3 ]
sortedlist = sort [2,5,3,4,7]
sumOfEach = zipWith (+) sampleList1 sampleList2

-- These involves filters
evenUnder30 = [x*2|x<-[1..20], x*2<30]
devideBy7N11 = [x|x<-[0..200],x`mod`7==0,x`mod`11==0]
moreThan20 = filter(>20) sampleList3
evenUpTo20 = takeWhile (<=20) [2,4..]

-- Operators have directions:
fromLeft = foldl (*) 1 sampleList1
fromRight = foldr (*) 1 sampleList1

{-
The operation actually happening in the following function:
To create a list, we do:
	1, Take each element of [1..10]
	2, Preform the calculation
	3, Store the outcome to the final list
-}
power3 = [ 3^n | n <- [1..10]]

-- multi-dimensional table can be created as well
-- This will create 9 tables, with 9 elements in each table
multiTable = [[x*y|y<-[1..9]]|x<-[1..9]]

-- \ can be used to represent elements
dbl1To10 = map (\x->x*2)[1..10]
-- It's the same as
doubleList = [x*2|x<-[1..10]]