require 'rational'
puts (2..19).inject(1) { |num, x| num.lcm x }
