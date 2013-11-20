import Toolbox

main = print no012

triNumbers = scanl1 (+) [1..]

no012 = [x | x <- triNumbers, factorCount x > 500] !! 0
