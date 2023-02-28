class Octal
  def initialize(num_as_str)
    @octal_number = num_as_str
  end

  def to_decimal
    resultant = 0
    return 0 if invalid_octal

    arr_digits = @octal_number.chars.map(&:to_i).reverse

    arr_digits.each_with_index do |val, exponent|
      resultant += val.to_i * (8 ** exponent)
    end
    resultant
  end

  private

  def invalid_octal
    @octal_number.chars.any? { |num| /[^0-7]/.match(num.to_s) }
  end
end
