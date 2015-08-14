{-
This is the testing codes for mathematical calculations
-}

import System.IO
import Data.List

-- This will return the sum of 1 to 100, Thanks to the power of "list"
sumOfNums = sum [1..100]

-- Basic calculations:
-- none like in Ruby, 5/4 will actually result in 1.25
addEx = 5 + 4
subEx = 5 - 4
multEx = 5 * 4
divEx = 5 / 4

-- There are also prefix style calculations, like:
modEx = mod 5 4
-- You can use prefix calculations in a more nature way by using `` like:
-- In this situation, a prefix operator is turned into an infix operator
modEx2 = 5 `mod` 4

-- negative numbers should be put between ()
negNumEx = 5 + (-4)

-- Here is an example of square root
-- The definition of sqrt can be checked in terminal by :t sqrt
num9 = 9 :: Int
sqrtOf9 = sqrt(fromIntegral num9)

-- Other built in math functions (and more...)
piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2
roundVal = round 9.999
sin45 = sin (pi/4)
cos45 = cos (pi/4)

-- boolean calculations
trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)