# Write a program that will take a string of digits and return all the possible
# consecutive number series of a specified length in that string.

class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(specified_length)
    raise ArgumentError if specified_length > @digits.length
    @digits.chars.map(&:to_i).each_cons(specified_length).to_a
  end
end