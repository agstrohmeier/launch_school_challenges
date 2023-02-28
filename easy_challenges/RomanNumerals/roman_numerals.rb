class RomanNumeral
  NUMERALS = ["I", "V", "X", "L", "C", "D", "M"]

  def initialize(number)
    @number = number
  end

  def to_roman
    result_numeral = []
    num_as_int_array = @number.to_s.chars.map(&:to_i)

    i = 0
    while num_as_int_array.length > 0 do
      result_numeral.unshift(calculate_numeral(NUMERALS[i], NUMERALS[i + 1], NUMERALS[i + 2], num_as_int_array.pop))
      i += 2
    end

    result_numeral.join
  end

  def calculate_numeral(first_numeral, second_numeral, third_numeral, value)
    case value
    when 0
      nil
    when (1..3)
      first_numeral * value
    when 4
      first_numeral + second_numeral
    when (5..8)
      second_numeral + (first_numeral * (value % 5))
    when 9
      (first_numeral * (10 % value)) + third_numeral
    end
  end
end
