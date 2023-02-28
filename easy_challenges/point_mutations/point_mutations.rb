class DNA
  def initialize(initial_dna)
    @dna = initial_dna
  end

  def hamming_distance(other_dna)
    hamming_distance = 0
    [@dna.length, other_dna.length].min.times do |i|
      @dna[i] == other_dna[i] ? nil : hamming_distance += 1
    end
    hamming_distance
  end
end

dna = DNA.new('abds')
puts dna.hamming_distance('afsesf')
