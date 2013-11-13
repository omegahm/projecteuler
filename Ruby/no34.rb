class Integer
  def !
    (2..self).inject(:*) || 1
  end

  FAC = 0.upto(9).map(&:to_i).map(&:!)

  def sum_of_facs
    self.to_s.split(//).map {|i| FAC[i.to_i] }.inject(:+)
  end
end

sum = 0
3.upto(1e6) do |n|
  sum += n if n == n.sum_of_facs
end
puts sum
