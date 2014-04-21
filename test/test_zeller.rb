require 'minitest/autorun'
require 'print_month'

class CalTest < MiniTest::Unit::TestCase

  def test_01_zeller_gets_correct_day
    day = zeller(01, 2012)
    assert_equal(0, day)
  end

  def test_02_zeller_get_correct_day
    start_day = zeller(04, 2014)
    assert_equal(2, start_day)
  end

  def test_03_zeller_get_correct_day
    start_day = zeller(03, 2012)
    assert_equal(4, start_day)
  end

  def test_04_zeller_get_correct_day
    start_day = zeller(02, 1992)
    assert_equal(6, start_day)
  end


end
