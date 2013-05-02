pandigital = []
2.upto(98) do |a|
  1.upto(2000) do |b|
    c = a * b
    pandigital << c if "#{c}#{a}#{b}".split(//).sort.join == "123456789"
  end
end

puts pandigital.uniq.inject(:+)
