class RomanNumeral
  NUMERALS = ['I', 'V', 'X', 'L', 'C', 'D', 'M']

  def initialize(number)
    @number = number
  end

  def to_roman
    roman_numeral = ""
    number_array = @number.to_s.chars.map(&:to_i)
    i = 0

    number_array.length.times do
      roman_numeral.prepend(numerals(number_array.pop, i))
      i += 2
    end
    
    roman_numeral
  end

  def numerals(number, index)
    numeral = ""
    case number
    when 1..3
      numeral << NUMERALS[index] * number
    when 4
      numeral << NUMERALS[index] + NUMERALS[index + 1]
    when 5..8
      numeral << NUMERALS[index + 1] + (NUMERALS[index] * (number - 5))
    when 9
      numeral << NUMERALS[index] + NUMERALS[index + 2]
    end
    numeral
  end
end