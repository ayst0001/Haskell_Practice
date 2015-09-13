import Data.List
import System.IO

-- most of the comparison are the same as Java, except != is now /=
-- && || not 

-- For example
doubleEvenNum x = 
	if (mod x 2 == 0)
		then x
	else x*2 
doubleEvenList = [doubleEvenNum x| x<-[1..10]]

-- Case conditions are also available, like:
getClass :: Int -> String
getClass n = case n of
	5 -> "Go to Kindergarten"
	6 -> "Go to elementary school"
	_ -> "Go away"
	
--