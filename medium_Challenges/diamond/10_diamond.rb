class Diamond
  ALPHABET = %W(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

  def self.make_diamond(letter)
    letter_position = ALPHABET.index(letter)

    diamond = []
    (letter_position + 1).times do |i|
      outside_spaces = " " * (letter_position - i)
      if i == 0
        diamond << outside_spaces + "A" + outside_spaces
      else
        diamond << outside_spaces + ALPHABET[i] + (" " * (i * 2 - 1)) + ALPHABET[i] + outside_spaces
      end
    end
    (diamond + diamond[0..-2].reverse).join("\n") + "\n"
  end
end
