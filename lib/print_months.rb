require 'month_days.rb'
require 'zeller.rb'

def puts_months_days(m, y)
  m = m.to_i
  y = y.to_i
  str = ""
  #print month and days
  days = "Su Mo Tu We Th Fr Sa"
  months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
  mtp = months[m-1]
  str <<  mtp.center(20)
  str << days
  #print days
  num_of_days = days_in_month(m, y) #<-- inside month_days
  start_day = zeller(m, y)  #<-- inside zeller
  day = 1
  line_counter = start_day
  first_row = ""
  start_day.times {first_row << "   "}
  str << first_row
  #days_array = ""
  num_of_days.times do
=begin
    if line_counter > 6
      print "\n"
      line_counter = 0
    end
=end
    if day < 10
      if line_counter == 6
        str << " "+day.to_s
      else
        str << " "+day.to_s+" "
      end
    else
      if line_counter == 6
        str << day.to_s
      else
        str << day.to_s+ " "
      end
    end
    day += 1
    line_counter +=1
  end
  #str << days_array
return str
end
