# Write a program that, given a natural number and a set of one or more
# other numbers, can find the sum of all of the multiples of the numbers
# in the set that are less than the first number. If the set of numbers
# is not given, use a default set of 3 and 5.

# For instance, if we list all the natural numbers up to, but not including,
# 20 that are multiples of either 3 or 5, we get 3, 5, 6, 9 , 10, 12, 15, 18.
# The sum of these multiples is 78.

class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(number)
    arr = []
    (1...number).each do |test_num|
      @multiples.each do |multiple|
        arr << test_num if test_num % multiple == 0 
      end
    end
    arr.uniq.sum
  end

  def self.to(number)
    SumOfMultiples.new(3, 5).to(number)
  end
end