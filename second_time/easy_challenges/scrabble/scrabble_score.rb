class Scrabble
  KEY = {a: 1, e: 1, i: 1, o: 1, u: 1, l: 1, n: 1, r: 1, s: 1, t: 1, d: 2, g: 2,
        b: 3, c: 3, m: 3, p: 3, f: 4, h: 4, v: 4, w: 4, y: 4, k: 5, j: 8, x: 8,
        q: 10, z: 10
        }
        
  def initialize(input)
    @input = input
  end

  def valid_input?(value)
    value.match?(/\A[a-zA-Z'-]*\z/)
  end

  def no_valid_characters
    @input.chars.select{ |value| valid_input?(value) }.length.zero?
  end

  def score
    return 0 if @input == nil || no_valid_characters
    value_array = @input.chars.map do |letter|
      valid_input?(letter) ? KEY[letter.downcase.to_sym] : 0 
    end

    value_array.sum
  end

  def self.score(input)
    Scrabble.new(input).score
  end
end