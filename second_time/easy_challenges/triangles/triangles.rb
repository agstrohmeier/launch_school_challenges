class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort
    raise ArgumentError if @sides[0] <= 0
    raise ArgumentError if (@sides[0] + @sides[1]) <= @sides[2]
  end

  def kind
    if @sides.uniq.length == 1
      'equilateral'
    elsif @sides.uniq.length == 2
      'isosceles'
    else
      'scalene'
    end
  end
end

