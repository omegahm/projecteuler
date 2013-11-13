require 'benchmark'
naive_sum = 0
smart_sum = 0

Benchmark.bm do |x|
  x.report('naive') do
    # Naive
    
    200.step(0, -200) do |a|
      a.step(0, -100) do |b|
        b.step(0, -50) do |c|
          c.step(0, -20) do |d|
            d.step(0, -10) do |e|
              e.step(0, -5) do |f|
                f.step(0, -2) do 
                  naive_sum += 1
                end
              end
            end
          end
        end
      end
    end
  end

  x.report('smart') do
    # Smart
    class Integer
      def integer_partitions(pArray, p=0)
        if p == pArray.length-1
          pArray.last
        else
          self >= 0 ? (self - pArray[p]).integer_partitions(pArray, p) + self.integer_partitions(pArray, p+1) : 0
        end
      end
    end

    smart_sum = 200.integer_partitions([200,100,50,20,10,5,2,1])
  end
end

puts ''
if naive_sum == smart_sum
  puts naive_sum
else
  puts "THEY ARE DIFFERENT"
  puts "Naive: #{naive_sum}"
  puts "Smart: #{smart_sum}"
end
