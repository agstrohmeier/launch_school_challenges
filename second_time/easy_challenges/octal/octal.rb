class Octal
  def initialize(value)
    @value = value
  end

  def to_decimal
    return 0 unless valid_input?

    new_number = 0
    @value.chars.reverse.each_with_index do |digit, exponent|
      new_number += (digit.to_i)*(8**exponent)
    end

    new_number
  end

  def valid_input?
    @value.match(/[^0-7]/).nil?
  end
end