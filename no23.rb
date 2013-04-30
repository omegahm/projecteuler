class Integer
  def divisors
    tmp = []
    1.upto(Math.sqrt(self)) do |x|
      if self % x == 0
        tmp << x 
        tmp << self / x
      end
    end
    tmp.reject{ |x| x == self }.uniq
  end

  def abundant?
    self.divisors.inject(:+) > self
  end
end

abundant_list = []
12.upto(28123) do |x|
  abundant_list << x if x.abundant?
end

all_non_abundant_sums = []

abundant_list.each_with_index do |a, i|
  abundant_list.each_with_index do |b, j|
    next if i > j
    all_non_abundant_sums << a+b
  end
end

puts ((1..28123).to_a - (all_non_abundant_sums & (1..28123).to_a)).inject(:+)
