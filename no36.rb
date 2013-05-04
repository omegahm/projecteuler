class String
  def palindrome?
    self.reverse == self
  end
end

sum = 0
1_000_000.times do |n|
  sum += n if n.to_s.palindrome? and n.to_s(2).palindrome?
end
puts sum
