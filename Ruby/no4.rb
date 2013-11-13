class Integer
  def palindrome?
    self.to_s.reverse == self.to_s
  end
end

max = 1
999.downto(100).each do |a|
  999.downto(a).each do |b|
    prod = a * b
    max = prod if prod > max and prod.palindrome?
  end
end

puts max
