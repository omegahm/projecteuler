sum_of_squares = (1..100).inject(0) {|sum, n| sum + n**2}
square_of_sum = (1..100).inject(:+)**2

puts (sum_of_squares - square_of_sum).abs
