require 'minitest/autorun'

class Calculator

  def add(x, y)
    x + y
  end
end

class TestCalculator < Minitest::Test

  def test_addition
    calculator = Calculator.new

    result = calculator.add(3, 2)

    assert_equal 5, result
  end
end
