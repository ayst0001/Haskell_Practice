-- Use "data" keyword to declare 
data Gender = Male | Female deriving Show
data Role = Staff | Student deriving Show
data Person = Person Gender Role

-- Define the function to show a person
instance Show Person where show = show1
show1 (Person Male Student) = "You're a male student"
show1 (Person Female Student) = "You're a female student"
show1 (Person Male Staff) = "Hello Mr."
show1 (Person Female Staff) = "You look good today"

-- Testing for each case
ray = Person Male Student
vivian = Person Female Student
tim = Person Male Staff
maggie = Person Female Staff

showRay = show ray
showVivian = show vivian
showTim = show tim
showMaggie = show maggie


-- Define a deck of card with joker
-- A normal card has a Suit and a Rank
data Suit = Diamond | Club | Heart | Spade deriving (Show, Eq, Ord)
data Rank = Ace | R2 | R3 | R4 | R5 | R6 | R7 | R8 | R9 | R10 | Jack | Queen | King deriving (Show, Eq, Ord)
data Ncard = NormalCard Suit Rank

-- A Joker can be red or black
data Joker = RedJoker | BlackJoker

-- A card can be either a Ncard or a Joker
data Jcard = Ncard | Joker

-- Tests: check the type of these in ghci
card1 = RedJoker
card2 = NormalCard Club Ace

-- Define a type for books in a library
-- In this way you can actually assign another name for the types to distinguish them
-- However, you can just use Book String Int, but no body will know what these arguments mean later
data Books = Book { title :: String
					, cat :: Int} deriving Show
book1 = Book "Learn you a Haskell" 12345
showBook1 = show book1

-- This is another way to define a type with existing types
data Font_colour = Colour_name String | Hex Int | RGB {red::Int, green::Int,blue::Int}
data Font_tag = Font_tag (Maybe String)(Maybe Int)(Maybe Font_colour)