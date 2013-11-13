main = print no003

no003 :: Int
no003 = (factors 600851475143) !! 0

factors :: Int -> [Int]
factors n = factors' n 2 []
  where
    factors' n z xs
           | z * z > n      = xs++[n]
           | n `mod` z == 0 = factors' (n `div` z) z xs++[z]
           | otherwise      = factors' n (z+1) xs

