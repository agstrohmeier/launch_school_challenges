require 'date'

class Meetup
  WEEKDAY_NUMBERS = { 'sunday'    => 0,
                      'monday'    => 1,
                      'tuesday'   => 2,
                      'wednesday' => 3,
                      'thursday'  => 4,
                      'friday'    => 5, 
                      'saturday'  => 6
                    }
  SCHEDULE_NUMBERS = { 'first'  => 0, 
                       'second' => 1,
                       'third'  => 2,
                       'fourth' => 3,
                       'fifth'  => 4,
                       'last'   => -1,
                     }
  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(weekday, schedule)
    original_date = Date.new(@year, @month, 1)
    test_date = Date.new(@year, @month, 1)
    days = []
    loop do
      test_date.wday == WEEKDAY_NUMBERS[weekday.downcase] ? days << test_date : nil
      test_date = test_date.next
      break if test_date.month != original_date.month
    end
    if schedule == 'teenth'
      days.select{ |date| date.day > 12 && date.day < 20 }.first
    else
      days[SCHEDULE_NUMBERS[schedule.downcase]]
    end
  end
end

test_date = Meetup.new(2022, 6)
test_date.day('Monday', 'third')