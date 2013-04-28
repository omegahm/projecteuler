require 'mathn'

class Integer
  def divisor_count
    self.prime_division.inject(1) {|sum, pd| sum *= (pd[1] + 1)}
  end
end

i, triangle_number = 1, 1
while triangle_number.divisor_count < 500
  i += 1
  triangle_number += i
end

puts triangle_number
