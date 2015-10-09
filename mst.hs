import Data.List
-- Program a function, which finds the first positive element, times 2
-- find the first element greater than that and return three times of it

findFirstPositive :: [Int] -> (Int, [Int])
findFirstPositive [] = error "There is no positive element in this list"
findFirstPositive (x:xs) = 
	if (x<=0) then findFirstPositive xs else (x,xs)

findFirstGreater :: Int -> [Int] -> Int 
findFirstGreater _ [] = error "There is no element greater than 2X of the target"
findFirstGreater target (x:xs) =
	if target >= x then findFirstGreater target xs else x

function :: [Int] -> Int
function inputList = findFirstGreater (doubleTarget inputList) (leftList inputList)

doubleTarget :: [Int] -> Int
doubleTarget inputList = getValueAndDouble (findFirstPositive inputList)

getValueAndDouble :: (Int,[Int]) -> Int
getValueAndDouble (x,_) = x * 2 

leftList :: [Int] -> [Int]
leftList inputList = getRestList (findFirstPositive inputList)
getRestList (x,(y:ys))= (y:ys) 

-- Program a function that filters out all the negative numbers of a list
noNeg :: (Num a, Ord a)=> [a] -> [a]
noNeg [] = []
noNeg (x:xs) =
	if x<0 then noNeg xs else x:(noNeg xs)
	
-- create a deck of cards and write a function to return their rank
data Rank = Club | Heart | Diamond |Spade
reportRank :: Rank -> String
reportRank cardRank = 
	case cardRank of 
		Club -> "This is a Club"
		Diamond -> "This is a Diamond"
		Spade -> "This is a Spade"
		Heart -> "This is a Heart"
		
-- create a deck of cards and write a function to return there order
data Order = Order Int
reportOrder :: Order -> String
reportOrder cardOrder = 
	case cardOrder of
		Order 1 -> "This is a Ace"
		Order x -> "This is a " ++ (show x)

-- program a function that insert an Int into a list
insertList :: [Int] -> Int -> [Int]
insertList [] x = [x]
insertList (y:ys) a 
	| a>y = y: (insertList ys a) 
	| otherwise = y:a:ys