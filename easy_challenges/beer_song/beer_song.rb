class BeerSong

  def self.verse(bottle_count)
    case bottle_count
    when 3..99
      "#{bottle_count} bottles of beer on the wall, #{bottle_count} bottles of beer.\n" +
      "Take one down and pass it around, #{bottle_count - 1} bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" +
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" +
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def self.verses(starting_verse, ending_verse)
    output = ""
    (1 + starting_verse - ending_verse).times do |idx|
      output += verse(starting_verse - idx) + "\n"
      #phrase(starting_verse - idx) + "\n"
    end
    output.chomp
  end

  def self.lyrics
    verses(99, 0)
  end
end

puts BeerSong.verses(99, 97)
