import Toolbox
main = print no007

--no007 :: Int
no007 = primes !! 10000

--primes :: [Int]
--primes = sieve [2..]
--  where
--    sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p > 0]
