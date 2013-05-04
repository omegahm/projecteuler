max, value = 0, 0

100.upto(998) do |p|
  next if p.odd?
  
  found = 0
  1.upto(p/4) do |a|
    (a+1).upto((p-a)/2) do |b|
      c = Math.sqrt(a**2 + b**2)
      found += 1 if a + b + c == p
    end
  end
  
  max, value = found, p if found > max
end
puts value
