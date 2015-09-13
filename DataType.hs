import Data.List
import System.IO

-- type can be enumerated like:
data BasketballPlayer = C|PF|SF|SG|PG
	deriving Show

-- Use this new datatype to check what position James Harden plays
jamesHarden :: BasketballPlayer -> Bool
jamesHarden SG = True
jamesHarden n = case n of
	SG -> True
	_ -> False
	
-- Custom types are also available
data Customer = Customer String String Double
	deriving Show

-- Now we can use the newly defined datatype
rayWong :: Customer
rayWong = Customer "Ray Wong" "8 Sutherland" 388000

-- And we can check the balance of a customer
getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b