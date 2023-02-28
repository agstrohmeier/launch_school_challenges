# Write a program that manages robot factory settings. When robots come off the
# factory floor, they have no name. The first time you boot them up, a name
# is generated, such as RX837 or BC811.

# Every once and a while, we need to reset a robot to its factor ysettings, which 
# means their name gets wiped. The next time you ask, it will respond with a new
# robot name.

# The names must be random, and not follow a predictable sequence. Random names
# means there is a risk of ocllisions. Your solution should not allow the same name twice.

class Robot
  attr_reader :name
  @@master_name_list = []
  
  def initialize
    reset
  end

  def generate_name
    name = ''
    loop do
      2.times { name << ('A'...'Z').to_a.sample }
      3.times { name << (0..9).to_a.sample.to_s }
      break unless @@master_name_list.include?(name)
      name = ''
    end
    @@master_name_list << name
    name
  end

  def reset
    @@master_name_list.delete(@name)
    @name = generate_name
  end
end
