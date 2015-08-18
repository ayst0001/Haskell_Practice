import Data.List
import System.IO

{-
A list can only contain a single kind of data type
However, a tuple can contain different data types
They are represent by elements between ()
-}

randTuple = (1, "Random Tuple")

-- Sometimes it can be used like an entry in a database
bobSmith = ("Bob Smith", 52)
-- To get a certain value of a tuple
bobName = fst bobSmith
bobAge = snd bobSmith

-- Tuples can be created by combining to lists through "zip"
names = ["Bob", "Mary", "Tom"]
ages = [45 , 22 , 34]
nameNAge = zip names ages