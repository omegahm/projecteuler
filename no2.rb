fib_list = []

fib_num = 1
last_fib_num = 1

while fib_num < 4_000_000
  fib_list << fib_num
  fib_num, last_fib_num = fib_num + last_fib_num, fib_num
end

puts fib_list.select(&:even?).inject(:+)
