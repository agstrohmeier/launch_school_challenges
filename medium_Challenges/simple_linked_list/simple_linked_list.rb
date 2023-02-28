require 'pry'
class SimpleLinkedList
  def initialize
    @data = []
  end

  def push(value)
    @data << (empty? ? Element.new(value) : Element.new(value, head))
  end

  def empty?
    size == 0
  end

  def size
    @data.length
  end

  def peek
    head.nil? ? nil : head.datum
  end

  def head
    @data.last
  end

  def pop
    @data.pop.datum
  end

  def self.from_a(input)
    new_list = SimpleLinkedList.new
    input.class == Array ? input.reverse_each { |element| new_list.push(element) } : nil
    new_list
  end

  def to_a
    @data.reverse.map { |element| element.datum }
  end

  def reverse
    SimpleLinkedList.from_a(to_a.reverse)
  end
end

class Element
  attr_accessor :next
  attr_reader :datum

  def initialize(datum, next_element=nil)
    @datum = datum
    @next = next_element
  end

  def tail?
    @next.nil?
  end
end