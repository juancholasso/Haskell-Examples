import Data.Char

functionOne :: Int -> [a] -> [a] -> ([a],[a])
functionOne n a b = 
    ( take n b ++ reverse (take (length a - n) (reverse a)) , take n a ++ reverse (take (length b - n) (reverse b)) )

functionTwo :: String -> Int
functionTwo s = 
    sum (map (read::String->Int) (filter (all isDigit) (words s)))


--functionOne 3 "Haskell" "Python"
--functionOne 12 "Haskell" []
--functionOne (-1) "Haskell" "Java"

-- functionTwo "I have 2 core courses and 1 elective"
-- functionTwo "I am 30 years old"
-- functionTwo "word 31 word123213 01 17"