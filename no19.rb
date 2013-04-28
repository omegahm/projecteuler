require 'date'

sum = 0
1901.upto(2000) do |year|
  1.upto(12) do |month|
    sum += 1 if Date.new(year, month, 1).cwday == 7
  end
end
puts sum
