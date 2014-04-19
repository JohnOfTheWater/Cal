
def days_in_month(m, y)
  case m
  when 1, 3, 5, 7, 8, 10, 12
    return days = 31
  when 4, 6, 9, 11
    return days = 30
  when 2
    return days = leap_year(y) ? 29 : 28
  else
    puts "Please use numbers only."
  end
end

def leap_year(y)
  (y % 400 == 0) || (y % 100 != 0 && y % 4 == 0)
end
