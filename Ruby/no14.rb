class Integer
  def collatz_count(count = 0)
    if self == 1
      count
    elsif self.even?
      (self/2).collatz_count(count+1)
    else
      (3*self+1).collatz_count(count+1)
    end
  end
end

max = 0
result = 0

1.upto(1_000_000) {|x| 
  seq = x.collatz_count
  max = [max, seq].max
  if seq == max
    result = x
  end
}

puts result
