BELOW_TEN = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
TEENS = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
TENS = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

class Integer
  def to_written_word
    result = ""
    if self == 1000
      result = "onethousand"
    else

      if self > 99
        result += BELOW_TEN[self/100]
        result += "hundred"
      end
      
      rest = self % 100
      if rest != 0
        if self > 99
          result += "and"
        end

        if rest / 10 == 1
          result += TEENS[rest % 10]
        else
          result += TENS[rest / 10]
          result += BELOW_TEN[rest % 10]
        end
      end
    end
    result
  end
end

result = BELOW_TEN.inject(0) {|sum, n| sum + n.length }
result += TEENS.inject(0) {|sum, n| sum + n.length }
result += (20..1000).map(&:to_written_word).inject(0) {|sum, n| sum + n.length }

puts result
