fib_num, last_fib_num, i = 1, 1, 2

until fib_num.to_s.size == 1000
  fib_num, last_fib_num = fib_num + last_fib_num, fib_num
  i += 1
end

puts i
