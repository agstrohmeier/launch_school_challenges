require 'date'

class Meetup
  WEEKDAYS = { 'sunday' => 0, 'monday' => 1, 'tuesday' => 2, 'wednesday' => 3, 
               'thursday' => 4, 'friday' => 5, 'saturday' => 6 }
  DESCRIPTORS = { 'first' => 0, 'second' => 1, 'third' => 2, 'fourth' => 3, 
                  'fifth' => 4, 'last' => -1, 'teenth' => 'teenth'}
  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(weekday, descriptor)
    arr = Array(1..Date.new(@year, @month, -1).day)
    matched_weekdays = arr.select { |test_day| Date.new(@year, @month, test_day).wday == WEEKDAYS[weekday.downcase] }
    
    case descriptor
    when 'teenth'
      teenth_days = matched_weekdays.select { |weekday_num| weekday_num > 13 }
      Date.new(@year, @month, teenth_days[0])
    else
      return nil if DESCRIPTORS[descriptor.downcase] > matched_weekdays.length - 1
      Date.new(@year, @month, matched_weekdays[DESCRIPTORS[descriptor.downcase]])
    end
  end
end