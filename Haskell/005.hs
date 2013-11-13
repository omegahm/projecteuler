main = print no005

no005 :: Int
no005 = foldl (lcm) 1 [2..19]
