main = print no017

belowTen = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

sumBelowTen = sum $ map length $ belowTen
sumTeens    = sum $ map length $ teens

toWord :: Int -> String
toWord 1000 = "onethousand"
toWord n    = toWord' n ""
  where
    toWord' n x
          | n == 0             = x
          | n > 99             = (addAnd n) ++ toWord' (n `mod` 100) (x ++ (belowTen !! (n `div` 100) ++ "hundred"))
          | n `div` 10 == 1    = x ++ teens !! (n `mod` 10)
          | otherwise          = x ++ (tens !! (n `div` 10)) ++ (belowTen !! (n `mod` 10))
      where
        addAnd s
             | s `mod` 100 == 0 = ""
             | otherwise        = "and"

no017 = (sum $ map length $ [toWord x | x <- [20..1000]]) + sumTeens + sumBelowTen
