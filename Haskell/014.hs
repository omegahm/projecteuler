import Data.List

main = print no014

collatz n = collatz' n 1
  where
    collatz' 1 b = b
    collatz' x b
           | even x    = collatz' (x `div` 2) (b+1)
           | otherwise = collatz' (3*x + 1) (b+1)

no014 = maximumBy (\a b -> compare (snd a) (snd b)) $ take 1000000 [(x, collatz x) | x <- [1..]]
