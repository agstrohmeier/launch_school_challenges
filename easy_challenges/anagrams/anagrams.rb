class Anagram
  def initialize(word)
    @original_word = word
  end

  def match(word_array)
    word_array.select do |test_word|
      test_word.downcase != @original_word.downcase &&
      test_word.downcase.chars.sort == @original_word.downcase.chars.sort
    end
  end
end
