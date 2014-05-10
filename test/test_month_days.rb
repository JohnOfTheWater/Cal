require 'minitest/autorun'
require 'month_days'

class CalTest < MiniTest::Unit::TestCase

  def test_01_days_in_month_gets_correct_days
    days = days_in_month(01, 2012)
    assert_equal(31, days)
  end

  def test_02_days_in_month_gets_correct_days
    days = days_in_month(4, 2012)
    assert_equal(30, days)
  end

  def test_03_days_in_month_gets_correct_days_no_leap_year
    days = days_in_month(2, 2011)
    assert_equal(28, days)
  end

  def test_04_days_in_month_gets_correct_days_for_leap_year
    days = days_in_month(2, 2000)
    assert_equal(29, days)
  end

  def test_05_days_in_month_gets_correct_days
    days = days_in_month(12, 1999)
    assert_equal(31, days)
  end

  def test_06_days_in_month_gets_correct_days
    days = days_in_month(12, 1999)
    assert_equal(31, days)
  end

  def test_07_days_in_month_gets_correct_days
    days = days_in_month(8, 1980)
    assert_equal(31, days)
  end

end
