main = print no002

no002 :: Int
no002 = sum $ filter even $ takeWhile (< 4000000) fibs
  where
    fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
