require 'mathn'
sum = 0
Prime.take_while {|n| n < 1_000_000 }.each do |n|
  if n.prime? and (n.to_s + n.to_s).split(//).each_cons(n.to_s.size).map(&:join)[0..-2].all? {|p| p.to_i.prime? }
    sum += 1
  end
end
puts sum
