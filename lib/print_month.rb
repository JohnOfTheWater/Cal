require 'month_days.rb'
require 'zeller.rb'

def puts_month_days(m, y)
  m = m.to_i
  y = y.to_i
  #print month and days
  days = "Su Mo Tu We Th Fr Sa"
  months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
  mtp = months[m-1]
  puts mtp.center(20)
  puts days
  #print days
  num_of_days = days_in_month(m, y) #<-- inside month_days
  start_day = zeller(m, y)  #<-- inside zeller
  day = 1
  line_counter = start_day
  first_row = ""
  start_day.times {first_row << "   "}
  print first_row
  num_of_days.times do
    if line_counter > 6
      print "\n"
      line_counter = 0
    end
    if day < 10
      print " "+day.to_s+" "
    else
      print day.to_s+ " "
    end
    day += 1
    line_counter +=1
  end
puts ""
end
