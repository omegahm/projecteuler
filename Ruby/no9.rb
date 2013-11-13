1.upto(997) do |a|
  a.upto(997 - a) do |b|
    c = Math.sqrt(a**2 + b**2)
    puts (a * b * c).to_i if a + b + c == 1000
  end
end
