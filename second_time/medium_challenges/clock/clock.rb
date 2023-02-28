# Create a clock that is independenteden of date.

# you should be able to add minutes to and subreact minutes from the time
# represented by a given `Clock` object. Note that you should not mutate
# `Clock` objects when adding and subtracting minutes -- create a new
# `Clock` object.

# Two clock objects that represent the same time should be equal to eachother.

# You may not use any built-in date or time functionality; just use arithmetic.

class Clock
  attr_reader :minutes

  def initialize(minutes)
    @minutes = minutes
    @minutes -= 1440 until @minutes < 1440
    @minutes += 1440 until @minutes > -1
  end

  def to_s
    "%02d" % (@minutes/60) + ":" + "%02d" % (@minutes % 60)
  end

  def +(added_value)
    Clock.at(0, @minutes+added_value)
  end

  def -(subtracted_value)
    Clock.at(0, @minutes - subtracted_value)
  end

  def ==(other_clock)
    @minutes == other_clock.minutes
  end

  def self.at(hours=00, minutes=00)
    Clock.new(hours * 60 + minutes)
  end
end