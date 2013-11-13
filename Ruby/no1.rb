puts (1...1000).select {|num| num % 3 == 0 or num % 5 == 0}.inject(:+)
