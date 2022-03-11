WORDS = {
  0 => "zero",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety"
}

def to_word_form(number)
  word = ''
  if number == 0
    word << WORDS[number]
  else
    while number > 0
      if number <= 20
        if !word.empty?
          if word.end_with?(' ')
            word << "#{WORDS[number]}"
          else
            word << " and #{WORDS[number]}"
          end
        else
          word << "#{WORDS[number]}"
        end
        number = number%1
      elsif number > 20 and number <= 99
        decimal = number/10
        if !word.empty?
          word << " and #{WORDS[decimal*10]} "
        else
          word << "#{WORDS[decimal*10]} "
        end
        number = number%10
      elsif number >= 100 and number <= 999
        hundred = number/100
        word << ""
        if !word.empty?
          word << ", #{WORDS[hundred]} hundred"
        else
          word << "#{WORDS[hundred]} hundred"
        end
        number = number%100
      elsif number >= 1000
        thousand = number/1000
        word << "#{WORDS[thousand]} thousand"
        number = number%1000
      end
    end
  end
  word
end

puts "Input a number: "
num = gets.chomp.to_i
puts to_word_form(num)