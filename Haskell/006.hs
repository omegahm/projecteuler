main = print no006

no006 :: Int
no006 =  squareOfSum - sumOfSquares

sumOfSquares :: Int
sumOfSquares = truncate $ sum [x**2 | x <- [1..100]]

squareOfSum :: Int
squareOfSum = truncate $ (sum [1..100]) ** 2
