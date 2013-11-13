max_length = 0

2.upto(1000).each do |d|
  rest = 1
  
  d.times do
    rest = (rest * 10) % d
  end

  new_rest = rest

  rest = (rest * 10 ) % d
  length = 1
  
  while rest != new_rest
    rest = (rest * 10 ) % d
    length += 1
  end

  max_length = [max_length, length].max
end

puts max_length
