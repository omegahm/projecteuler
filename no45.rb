class Integer
  def pentagonal
    self * (3*self - 1) / 2
  end

  def is_hexagonal?
    (Math.sqrt(8*self+1)+1)/4 % 1 == 0
  end
end

n = 165
loop do
  n += 1
  npen = n.pentagonal
  
  if npen.is_hexagonal?
    puts npen
    exit
  end
end
