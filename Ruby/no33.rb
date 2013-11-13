# We are looking for numbers of the form
# ax / bx = a / b
# xa / bx = a / b
# ax / xb = a / b
# xa / xb = a / b
# (a, b, x being digits, not products)

nums, dens = [], []

0.upto(9) do |b|
 0.upto(b) do |a|
  0.upto(9) do |x|
    4.times do |i|
      case i
      when 0
        next if x == 0 or x != b
        num, den = "#{a}#{x}", "#{b}#{x}"
      when 1
        next if a == 0 or x == 0 or a != b
        num, den = "#{x}#{a}", "#{b}#{x}"
      when 2
        next if x == 0 or b == 0
        num, den = "#{a}#{x}", "#{x}#{b}"
      when 3
        next if a == 0 or b == 0 or a != x
        num, den = "#{x}#{a}", "#{x}#{b}"
      end
      
      if num.to_f / den.to_f == a.to_f / b.to_f
        nums << num.to_i
        dens << den.to_i
      end
    end
   end
 end
end

p dens.inject(:*).to_f / nums.inject(:*).to_f
