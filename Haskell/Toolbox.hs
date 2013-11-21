module Toolbox where
  import Data.List
  --Better prime list
  --http://en.literateprograms.org/Sieve_of_Eratosthenes_(Haskell)

  -- Merge two infinite ordered lists
  merge :: (Ord a) => [a] -> [a] -> [a]
  merge (x:xt) (y:yt) =
    case compare x y of
      LT -> x : (merge    xt (y:yt))
      EQ -> x : (merge    xt    yt)
      GT -> y : (merge (x:xt)   yt)

  -- Diff two infinite ordered lists
  diff :: (Ord a) => [a] -> [a] -> [a]
  diff (x:xt) (y:yt) =
    case compare x y of
      LT -> x : (diff    xt (y:yt))
      EQ ->      diff    xt    yt
      GT ->      diff (x:xt)   yt

  -- Primes are the three first primes and then all the
  -- odd numbers except the ones that are not(!) prime
  primes :: [Int]
  primes = [2, 3, 5] ++ (diff [7, 9 ..] nonprimes)
    where
      nonprimes = foldr1 f $ map g $ tail primes
        where
          f (x:xt) ys = x : (merge xt ys)
          g p         = [n*p | n <- [p, p + 2 ..]]

  primeFactors :: Int -> [Int]
  primeFactors n = primeFactors' n 2
    where
      primeFactors' n f
        | f*f > n        = [n]
        | n `mod` f == 0 = f : primeFactors' (n `div` f) f
        | otherwise      = primeFactors' n (f + 1)

  factorCount :: Int -> Int
  factorCount n = product $ map (+1) $ map length $ group $ primeFactors n

  fac :: Integer -> Integer
  fac n = fac' n 1
    where
      fac' 1 x = x
      fac' n x = fac' (n-1) (x*n)

  sumOfDigits :: Integer -> Integer
  sumOfDigits n = sum $ digits n
    where
      digits 0 = []
      digits x = digits (x `div` 10) ++ [x `mod` 10]
