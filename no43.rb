class String
  PRIMES = [2, 3, 5, 7, 11, 13, 17]
  def substring_divisible?
    self[1..3].to_i % PRIMES[0] == 0 && self[2..4].to_i % PRIMES[1] == 0 && self[3..5].to_i % PRIMES[2] == 0 && self[4..6].to_i % PRIMES[3] == 0 && self[5..7].to_i % PRIMES[4] == 0 && self[6..8].to_i % PRIMES[5] == 0 && self[7..9].to_i % PRIMES[6] == 0
  end
end

sum = 0
%w(0 1 2 3 4 5 6 7 8 9).permutation.map(&:join).each do |n|
  sum += n.to_i if n.substring_divisible?
end
puts sum
