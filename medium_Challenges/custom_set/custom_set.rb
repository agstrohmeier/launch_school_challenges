class CustomSet
  attr_reader :values
  def initialize(input_arr = [])
    if valid_input(input_arr) == true
      @values = input_arr.uniq.sort
    else
      
    end
  end

  def valid_input(test_values)
    test_values.none? { |value| value.class != Integer}
  end

  def empty?
    @values.empty?
  end

  def contains?(comparison_value)
    values.include?(comparison_value)
  end

  def subset?(comparison_set)
    values.all? { |value| comparison_set.values.include?(value) }
  end

  def disjoint?(comparison_set)
    values.none? { |value| comparison_set.values.include?(value) }
  end

  def eql?(comparison_set)
    values == comparison_set.values
  end

  def add(value)
    CustomSet.new(values << value)
  end

  def intersection(comparison_set)
    CustomSet.new(values & comparison_set.values)
  end

  def difference(comparison_set)
    CustomSet.new(values - comparison_set.values)
  end

  def union(comparison_set)
    CustomSet.new(values + comparison_set.values)
  end

  alias_method :==, :eql?

end
