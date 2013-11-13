class Integer
  def is_pentagonal?
    ((1 + Math.sqrt(1+24*self)) / 6) % 1 == 0
  end

  def pentagonal
    self * (3*self - 1) / 2
  end
end

n = 0
loop do
  n += 1
  npentagonal = n.pentagonal
  1.upto(n-1) do |m|
    diff = npentagonal - m.pentagonal
    if (npentagonal + m.pentagonal).is_pentagonal? and (diff).is_pentagonal?
      puts diff
      exit
    end
  end
end
