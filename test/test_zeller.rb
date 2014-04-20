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


end
