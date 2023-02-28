# Write a program that can generate the lyrics of 99 bottles of beer song. 
# See the test suite for the entire song. 
class BeerSong
  def self.lyrics
    self.verses(99, 0)
  end
  def self.verses(starting_verse, ending_verse)
    song = ""
    
    starting_verse.downto(ending_verse) do |verse_number|
      song << self.verse(verse_number) + "\n"
    end
    song.chomp
  end
  
  def self.verse(verse_number)
    case verse_number
    when 2
      self.two_bottle_beer_verse
    when 1
      self.one_bottle_beer_verse
    when 0
      self.zero_bottle_beer_verse
    else
      self.standard_beer_verse(verse_number)
    end
  end

  def self.standard_beer_verse(value)
    "#{value} bottles of beer on the wall, #{value} bottles of beer.\n" \
      "Take one down and pass it around, #{value-1} bottles of beer on the wall.\n"
  end

  def self.two_bottle_beer_verse
    "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end
  def self.one_bottle_beer_verse
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def self.zero_bottle_beer_verse
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end