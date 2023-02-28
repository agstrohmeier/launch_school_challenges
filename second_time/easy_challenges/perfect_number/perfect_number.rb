class PerfectNumber
  def self.classify(number)
    raise StandardError if number < 1
    
    calculate_aliquot(number)

    case @@aliquot_sum
    when (1...number)
      return 'deficient'
    when number
      return 'perfect'
    else
      return 'abundant'
    end
  end

  class << self
    private

    def calculate_aliquot(number)
      number_array = []
      (1...number).each do |test_number|
        number_array << test_number if number % test_number == 0
      end

      @@aliquot_sum = number_array.sum
    end
  end
end