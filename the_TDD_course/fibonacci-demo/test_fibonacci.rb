require 'minitest/autorun'
require_relative 'fibonacci'

class TestFibonacci < Minitest::Test

  def test_fibonacci_of_zero_is_zero
    result = Fibonacci.of(0)
    assert_equal 0, result
  end

  def test_fibonacci_of_one_is_one
    result = Fibonacci.of(1)
    assert_equal 1, result
  end

  def test_fibonacci_of_two_is_one
    result = Fibonacci.of(2)
    assert_equal 1, result
  end
end
