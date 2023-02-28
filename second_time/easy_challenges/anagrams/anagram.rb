class Anagram
  def initialize(base_word)
    @base_word = base_word
  end

  def match(option_array)
    option_array.select do |word| 
      word.downcase != @base_word.downcase &&
      @base_word.downcase.chars.sort == word.downcase.chars.sort
    end
  end
end