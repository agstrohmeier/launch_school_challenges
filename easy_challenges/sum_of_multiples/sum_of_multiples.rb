# class SumOfMultiples
#   def initialize(*args)
#     @multiples = args
#   end
#
#   def to(max_number)
#     SumOfMultiples.to(max_number, @multiples)
#   end
#
#   def self.to(max_number, multiples=[3, 5])
#     sum = 0
#     (1..max_number-1).each do |val|
#       sum += val if multiples.any? { |multiple| val % multiple == 0 }
#     end
#     sum
#   end
# end



class SumOfMultiples
  def self.to(max_number)
    SumOfMultiples.new(3, 5).to(max_number)
  end
  
  def initialize(*args)
    @multiples = args
  end

  def to(max_number)
    sum = 0
    (1..max_number-1).each do |val|
      sum += val if @multiples.any? { |multiple| val % multiple == 0 }
    end
    sum
  end


end
