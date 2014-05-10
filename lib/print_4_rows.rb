require 'print_month.rb'
require 'print_months.rb'


def print_4_rows(y)
  i = 1 #<-- first months of the year
  str = [] #<-- empty box for months string
  months = [] #<-- empty box for every chunk of string of the calendar
  12.times do
    str << puts_months_days(i, y)
    line_1 = str[0].slice(1..19)
    line_2 = str[0].slice(20..39)
    line_3 = str[0].slice(40..59)
    line_4 = str[0].slice(60..79)
    line_5 = str[0].slice(81..100)
    line_6 = str[0].slice(102..121)
    line_7 = str[0].slice(123..142)
    until line_7.length == 20 do
      line_7 << "\s"
    end
    line_8 = str[0].slice(144..163)
    if line_8 != nil
      until line_8.length == 20 do
        line_8 << "\s"
      end
    else
      line_8 = "\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s"
    end
    months << line_1
    months << line_2
    months << line_3
    months << line_4
    months << line_5
    months << line_6
    months << line_7
    months << line_8
    str = []
    i += 1
  end
  puts y.to_s.center(60) #<-- printings start from here
  rows = 4
  k = 0
  rows.times do
    print months[0+k].center(20) + "  " + months[8+k].center(20) + "  " + months[16+k].center(20) + "\n"
    print months[1+k] + "  " + months[9+k] + "  " + months[17+k] + "\n"
    print months[2+k] + "  " + months[10+k] + "  " + months[18+k] + "\n"
    print months[3+k] + "  " + months[11+k] + "  " + months[19+k] + "\n"
    print months[4+k] + "  " + months[12+k] + "  " + months[20+k] + "\n"
    print months[5+k] + "  " + months[13+k] + "  " + months[21+k] + "\n"
    print months[6+k] + "  " + months[14+k] + "  " + months[22+k] + "\n"
    print months[7+k] + "  " + months[15+k] + "  " + months[23+k] + "\n"
    k += 24
  end
end
