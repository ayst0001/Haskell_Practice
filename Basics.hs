-- This is a single line comment
{-
This is how you write multi-line comments
This is second line of the comment
-}


-- This is how you import a "module" in Haskell
import System.IO
import Data.List


{-
Int has a boundary, which can be checked with the function below
However, Integer doesn't, so it is used more often
-}
-- Function to return the maximum of "Int" data type
minInt = minBound :: Int
-- Similarly, function to return the minimum of "Int"
maxInt = maxBound :: Int


{-
Folat is available in Haskell, however, Double is used much more often
The following function shows the precision of Float
-}
bigFloat = 3.999999999999 + 0.000000000005

{-
Other data type includes: Bool, Char '', Tuple
Tuple is a bit special
-}