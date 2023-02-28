class CustomSet
  attr_reader :set
  def initialize(arguments=[])
    @set = arguments
  end

  def empty?
    @set.empty?
  end

  def contains?(value)
    @set.include?(value)
  end

  def subset?(comparison_set)
    if (empty? && comparison_set.empty?) || empty?
      return true
    elsif comparison_set.empty?
      return false
    else
      @set.all? { |item| comparison_set.contains?(item) }
    end
  end

  def disjoint?(comparison_set)
    if (empty? || comparison_set.empty?)
      return true
    else
      !comparison_set.set.any? { |item| contains?(item) }
    end
  end

  def eql?(comparison_set)
    comparison_set.set.sort.uniq == @set.sort.uniq
  end

  def add(new_value)
    @set << new_value
    @set = @set.uniq
    self
  end

  def ==(comparison_set)
    @set == comparison_set.set
  end

  def intersection(comparison_set)
    CustomSet.new(@set.select { |element| comparison_set.contains?(element) })
  end

  def difference(comparison_set)
    CustomSet.new(@set - comparison_set.set)
  end

  def union(comparison_set)
    CustomSet.new((@set + comparison_set.set).sort.uniq)
  end
end