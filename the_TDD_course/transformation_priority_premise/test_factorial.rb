require 'minitest/autorun'

class Factorial
  def self.calculate(value)
    if value < 2
      1
    else
      value * calculate(value-1)
    end
  end
end

class TestFactorial < Minitest::Test

  def test_factorial_one_is_zero
    one = Factorial.calculate(0)
    assert_equal 1, one
  end

  def test_factorial_one_is_one
    one = Factorial.calculate(1)
    assert_equal 1, one
  end

  def test_factorial_two_is_two
    two = Factorial.calculate(2)
    assert_equal 2, two
  end

  def test_factorial_three_is_six
    six = Factorial.calculate(3)
    assert_equal 6, six
  end
end
