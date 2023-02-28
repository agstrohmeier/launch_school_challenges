class Series
  def initialize(numbers)
    @numbers = numbers
  end

  def slices(length)
    raise ArgumentError if length > @numbers.length
    @numbers.chars.map(&:to_i).each_cons(length).to_a
  end
end

p test = Series.new('01234').slices(2)
