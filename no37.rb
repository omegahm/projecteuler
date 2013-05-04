require 'mathn'

class Integer
  def truncable_prime?
    tp = true
    str = self.to_s
    str.length.times do |i|
      tp = tp && str[0..i].to_i.prime?
      tp = tp && str[i..-1].to_i.prime?
    end

    tp
  end
end

count = 0
sum = 0

Prime.take_while do |n|
  if n.truncable_prime? and n > 7
    count += 1
    sum += n
  end

  count < 11
end

puts sum
