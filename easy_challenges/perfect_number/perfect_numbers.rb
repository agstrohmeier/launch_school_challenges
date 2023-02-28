class PerfectNumber
  def self.classify(input_number)
    raise StandardError if input_number < 1
    summed_numbers = (1...input_number).select { |num| input_number % num == 0 }.sum

    case summed_numbers
    when (0...input_number)
      'deficient'
    when input_number
      'perfect'
    when (input_number...)
      'abundant'
    end
  end
end
