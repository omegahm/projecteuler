main = print no004

no004 :: Int
no004 = maximum $ map read $ filter palinedrome $ map show [x*y | x <- [100..999], y <- [100..x]]

palinedrome :: String -> Bool
palinedrome s = s == reverse s
