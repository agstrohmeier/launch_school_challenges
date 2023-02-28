# Write a simple linked list implementation. the linked list is a fundamental data
# structure in computer science, often used in the implementation of other data 
# structures. 

# The simplest kind of linked list is a singly linked list. Each element in the
# list contains data and a "next" field pointing to the next leement in the list of 
# elements. This variant of linked lists is often used to represent sequences
# or push-down stacks (LIFO stack).

# Let's create a singly linked list whose elements may contain a range of data
# such as the numbers 1-10. Provide methods to reverse the linked list and 
# convert a linked list to and from an array.

class Element
  attr_reader :datum, :next
  def initialize(datum, next_element=nil)
    @datum = datum
    @next = next_element
  end

  def tail?
    @next.nil?
  end
end

class SimpleLinkedList
  def initialize
    @elements = []
  end

  def size
    @elements.size
  end

  def empty?
    @elements.empty?
  end

  def push(value)
    @elements <<(Element.new(value, @elements.last))
  end

  def peek
    @elements.empty? ? nil : @elements.last.datum 
  end

  def head
    @elements.last
  end

  def pop
    @elements.pop.datum
  end

  def self.from_a(input_array)
    list = SimpleLinkedList.new
    input_array.is_a?(Array) ? input_array.reverse.each { |item| list.push(item) } : nil
    list
  end

  def to_a
    @elements.reverse.map { |element| element.datum }
  end

  def reverse
    list = SimpleLinkedList.from_a(to_a.reverse)
    list
  end
end
