class Integer
  def d
    divisors = []
    sum = 0

    1.upto(self-1) do |divisor|
      divisors << divisor if self % divisor == 0
    end

    divisors.inject(:+) || 0
  end
end

sum = 0

1.upto(9999) do |n|
  dn = n.d
  sum += dn if n != dn and n == dn.d
end

puts sum
