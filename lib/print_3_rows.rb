require 'print_month.rb'
require 'print_months.rb'


def print_3_rows(y)
  i = 1
  str = []
  month = []
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
    month << line_1
    month << line_2
    month << line_3
    month << line_4
    month << line_5
    month << line_6
    month << line_7
    month << line_8
    str = []
    i += 1
  end
  puts y.to_s.center(85)
  k = 0
  3.times do
    print month[0+k].center(20) + "  " + month[8+k].center(20) + "  " + month[16+k].center(20) + "  " + month[24+k].center(20) + "\n"
    print month[1+k] + "  " + month[9+k] + "  " + month[17+k] + "  " + month[25+k] + "\n"
    print month[2+k] + "  " + month[10+k] + "  " + month[18+k] + "  " + month[26+k] + "\n"
    print month[3+k] + "  " + month[11+k] + "  " + month[19+k] + "  " + month[27+k] + "\n"
    print month[4+k] + "  " + month[12+k] + "  " + month[20+k] + "  " + month[28+k] + "\n"
    print month[5+k] + "  " + month[13+k] + "  " + month[21+k] + "  " + month[29+k] + "\n"
    print month[6+k] + "  " + month[14+k] + "  " + month[22+k] + "  " + month[30+k] + "\n"
    print month[7+k] + "  " + month[15+k] + "  " + month[23+k] + "  " + month[31+k] + "\n"
    k += 32
  end
end
