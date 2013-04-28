class Integer
  def !
    (2..self).inject(:*) || 1
  end
end

puts 100.!.to_s.split(//).map(&:to_i).inject(:+)
