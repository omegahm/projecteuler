result = 0
f = File.read("files/names.txt").chomp
names = f.gsub(/"/, '').split(/,/)

names.sort.each_with_index do |name, i|
  result += name.split(//).inject(0) {|s, n| s + (n.ord - 64)} * (i+1) # A.ord == 65
end

puts result
