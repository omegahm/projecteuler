require 'mathn'

m = 0
result = 0

-65.upto(1000) do |a| # we know we need to find more than 40 primes. 40^2 + 40a + b > -1000 => a = -65 when b = 0
  [a, 0].max.upto(1000) do |b| # since primes can't be negative, only loop from a-1000
    next unless b.prime? # when n=0, n^2 + an + b = b, so b has to be prime
    
    n = 0
    while (n*(a+n) + b).prime?
      n += 1
    end

    if [m, n].max == n then
      result = a * b
      m = n
    end
  end
end

puts result
