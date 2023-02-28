class Robot
  attr_reader :name
  
  @@robot_names = []

  def initialize
    reset
  end

  def random_name
    name = ''
    loop do
      2.times { name << ('A'..'Z').to_a.sample }
      3.times { name << (0..9).to_a.sample.to_s }

      break if @@robot_names.include?(name) == false
      name.clear
    end
    @@robot_names << name
    name
  end

  def reset
    @name = random_name
  end
end
