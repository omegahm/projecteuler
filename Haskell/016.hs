main = print no016

no016 = sumOfDigits $ 2^1000
  where
    sumOfDigits :: Integer -> Integer
    sumOfDigits n = sum $ digits n
      where
        digits 0 = []
        digits x = digits (x `div` 10) ++ [x `mod` 10]
