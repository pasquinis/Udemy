require 'minitest/autorun'
require_relative 'fibonacci'

class TestFibonacci < Minitest::Test

  def test_fibonacci_of_zero_is_zero
    result = Fibonacci.of(0)
    assert_equal 0, result
  end
end
