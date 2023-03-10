class Scrabble
  SCORE_CHART = {1 => %w(A E I O U L N R S T),
                 2 => %w(D G),
                 3 => %w(B C M P),
                 4 => %w(F H V W Y),
                 5 => %w(K),
                 8 => %w(J X),
                 10 => %w(Q Z)
                }
  def initialize(word)
    @word = word
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  def score
    return 0 if @word == '' || @word == nil
    @word.gsub(/[^a-zA-Z]/, '').upcase.chars.map { |char| SCORE_CHART.select{ |key, value| value.include?(char)}.map{|key, value| key }[0] }.sum
  end
end
