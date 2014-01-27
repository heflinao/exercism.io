require 'minitest/autorun'
require './year'

class YearTest < MiniTest::Unit::TestCase
  def test_leap_year
    assert Year.new(1996).leap?
  end

  def test_non_leap_year
    refute Year.new(1997).leap?
  end

  def test_century
    refute Year.new(1900).leap?
  end

  def test_fourth_century
    assert Year.new(2400).leap?
  end

end

