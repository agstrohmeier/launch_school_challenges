class Triangle
  attr_reader :kind

  def initialize (length1, length2, length3)
    @sides = [length1, length2, length3]
    valid_triangle?
    @kind = determine_type
  end

  def valid_triangle?
    # Ensure lengths are all greater than zero
    if @sides.any? { |side| side <= 0 }
      raise ArgumentError, 'All sides must be greater than zero.'
    end

    # Ensure lengths of smallest two sides are greater than the largest
    if @sides.sort[0] + @sides.sort[1] <= @sides.sort[2]
      raise ArgumentError, 'Sides do not create a valid triangle.'
    end
  end

  def determine_type
    return 'equilateral' if @sides[0] == @sides[1] && @sides[0] == @sides[2]
    return 'scalene' if @sides[0] != @sides[1] && @sides[0] != @sides[2] && @sides[1] != @sides[2]
    return 'isosceles'
  end
end
