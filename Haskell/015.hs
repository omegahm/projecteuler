main = print no015

fac :: Integer -> Integer
fac n = fac' n 1
  where
    fac' 1 x = x
    fac' n x = fac' (n-1) (x*n)

no015 :: Integer
no015 = (fac 40) `div` ((fac 20) ^ 2)
