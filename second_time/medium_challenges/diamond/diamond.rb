class Diamond
  def self.make_diamond(input_letter)
    spaces = initial_space_count(input_letter)
    inner_spaces = 1
    result_arr = Array(first_row(spaces))

    if spaces > 0
      ('B'..input_letter).to_a.each do |letter|
        spaces -= 1
        result_arr << generate_row(letter, spaces, inner_spaces)
        inner_spaces += 2
      end
    end

   mirror_row(result_arr).join("")
  end


  class << self
    private

    def initial_space_count(input_letter)
      ('A'...input_letter).to_a.length
    end

    def first_row(spaces)
      " " * spaces + 'A' + " " * spaces + "\n"
    end

    def generate_row(letter, outer_space, inner_space)
      (" " * outer_space) + letter + (" " * inner_space) + (letter + " " * outer_space) + "\n"
    end

    def mirror_row(array)
      (array + array.reverse[1..-1])
    end
  end
end