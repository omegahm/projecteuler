class String
  def to_word_value
    self.split(//).map {|n| n.ord - 64}.inject(:+)
  end
end

f = File.read("files/words.txt").chomp
words = f.gsub(/"/, '').split(/,/)
triangle_numbers = (words.sort {|a, b| a.length <=> b.length }[-1].length*26).times.inject([]) {|s, n| s << (0.5 * n * (n + 1))}

puts words.map(&:to_word_value).inject(0) {|num, w| num + (triangle_numbers.include?(w) ? 1 : 0)}
