require 'mathn'
class Integer
  PAN = ["", "1", "12", "123", "1234", "12345", "123456", "1234567", "12345678", "123456789"]
  def pandigital?
    str = self.to_s
    str.split(//).sort.join == PAN[str.length]
  end
end

largest = 0

# 1+2+3+4+5+6+7+8+9 = 45
# 1+2+3+4+5+6+7+8 = 36
# If the sum of digits is divisable by 3, it can't be prime

# Ruby does lexigocrafic permutations, so the last one is the largest
%w{1 2 3 4 5 6 7}.permutation.each do |n|
  largest = n if n.join.to_i.prime?
end

puts largest.join.to_i
