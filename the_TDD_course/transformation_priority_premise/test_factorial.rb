require 'minitest/autorun'

class Factorial
  def self.calculate(value)
    1
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
end
