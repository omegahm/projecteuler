class Integer
  def sum_of_power5_of_digits
    self.to_s.split(//).map {|i| i.to_i**5 }.inject(:+)
  end
end

# If d is number of digits, then the highest we can have with d digits is d*9^5
# Our upper bound is found when the number of digits in d*9^5 is higher than d
# When d=7, 7*9^5=413343, which only contains 6 digits, so we can't reach it
result = 2.upto(7*9**5).inject(0) do |sum, n|
  if n == n.sum_of_power5_of_digits
    sum + n
  else
    sum
  end
end

puts result
