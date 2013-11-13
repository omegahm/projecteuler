main = print no001

no001 :: Int
no001 = sum [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]
