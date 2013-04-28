# We use bottoms up dynamic programming
# Each field is the sum of itself and the largest of the two fields below it

# With the example, we'll get

# 3
# 7 4
# 2 4 6
# 8 5 9 3

# 3
# 7 4
# 10 13 15

# 3
# 20 19

# 23

triangle = [[75],
            [95, 64],
            [17, 47, 82],
            [18, 35, 87, 10],
            [20,  4, 82, 47, 65],
            [19,  1, 23, 75,  3, 34],
            [88,  2, 77, 73,  7, 63, 67],
            [99, 65,  4, 28,  6, 16, 70, 92],
            [41, 41, 26, 56, 83, 40, 80, 70, 33],
            [41, 48, 72, 33, 47, 32, 37, 16, 94, 29],
            [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
            [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
            [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48],
            [63, 66,  4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
            [ 4, 62, 98, 27, 23,  9, 70, 98, 73, 93, 38, 53, 60,  4, 23]]

(triangle.length-1).downto(0) do |row|
  0.upto(triangle[row].length-2) do |col|
    triangle[row-1][col] += [triangle[row][col], triangle[row][col+1]].max
  end
end

puts triangle.first.first
