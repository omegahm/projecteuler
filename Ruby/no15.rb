# We use dynamic programming
# Numbers should be in each intersection.
# On a 2x2 grid, there are 3x3 intersections.

# The example given would be

# 1 1 1
# 1 2 3
# 1 3 6

# To find the next number, we add the number above and to the left
# Thus giving us 6 routes from the top to the bottom

# Remember that there are 21x21 intersections in a 20x20 grid

grid = Array.new(21, Array.new(21, 1))

1.upto(20) do |row|
  1.upto(20).each do |col|
    grid[row][col] = grid[row-1][col] + grid[row][col-1]
  end
end

puts grid.last.last
