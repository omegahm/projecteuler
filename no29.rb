list = []
2.upto(100) do |a|
  2.upto(100) do |b|
    list << a**b
  end
end
puts list.uniq.count
