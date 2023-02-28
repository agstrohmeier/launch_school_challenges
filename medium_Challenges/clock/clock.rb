class Clock
  MINUTES_IN_DAY = 1440
  MINUTES_IN_HOUR = 60

  attr_reader :hours, :minutes

  def initialize(input_minutes)
    input_minutes %= MINUTES_IN_DAY
    @minutes = input_minutes % MINUTES_IN_HOUR
    @hours = input_minutes / MINUTES_IN_HOUR
  end

  def self.at(hours, minutes = 0)
    new(hours * MINUTES_IN_HOUR + minutes)
  end

  def +(added_minutes)
    self.class.new((hours * MINUTES_IN_HOUR) + minutes + added_minutes)
  end

  def -(subtracted_minutes)
    self.class.new((hours * MINUTES_IN_HOUR) + minutes - subtracted_minutes)
  end

  def ==(other)
    @hours == other.hours && @minutes == other.minutes
  end

  def to_s
    "#{format('%02d', @hours)}:#{format('%02d', @minutes)}"
  end
end