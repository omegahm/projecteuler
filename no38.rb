class Integer
  def pandigital(m = 1, a = "")
      return 0 if a.include?("0") or a.length > 9
      return a.to_i if a.length == 9 and a.split(//).sort.join == "123456789"
      self.pandigital(m + 1, a << "#{self*m}")
  end
end

max = 0
9876.downto(0) do |n|
     max = [max, n.pandigital].max
end
puts max
