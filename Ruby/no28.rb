# The upper right corner is n^2
# To sum 4 corners, we take 4 times n^2 and then count backwards
# The upper left is n^2 - n + 1
# The lower left is n^2 - 2n + 2
# The lower right is n^2 - 3n + 3
# The sum of the 4 is then 4n^2 - 6n + 6
puts (3..1001).step(2).inject(1) {|s, n| s + 4*n**2 - 6*n + 6}
