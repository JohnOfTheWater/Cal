def zeller(month, year)
  if month > 2
    op_year = year
  else
    op_year = year-1
  end
  d = 1
  if month > 2
    m = month
  else
    m = month + 12
  end
  k = (op_year % 100)
  j = (op_year / 100)
  h = ((d + ((13*(m+1))/5) + k + (k/4) + (j/4)-(2*j)) % 7)
  if h == 0
    return value = 6
  else
    return value = h - 1
  end
end
