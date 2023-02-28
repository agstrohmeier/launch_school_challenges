class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(comparison_strand)
    analyze_length = [@strand.size, comparison_strand.size].min
    strand = @strand[0..(analyze_length-1)]

    count = strand.split("").select.with_index do |dna, idx| 
      dna != comparison_strand.split("")[idx]
    end
    count.length
  end
end