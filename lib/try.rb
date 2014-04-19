day = 1
line_counter = 2
#print days
first_row = ""
2.times {first_row << "   "}
print first_row
30.times do
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
