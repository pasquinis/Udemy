require 'minitest/autorun'

class Calculator

  def add(x, y)
    x + y
  end

  def subtraction(x, y)
    x - y
  end

  def multiply(x, y)
    x * y
  end

  def division(x, y)
    x / y
  end
end

class TestCalculator < Minitest::Test

  def test_addition
    calculator = Calculator.new

    result = calculator.add(3, 2)

    assert_equal 5, result
  end

  def test_subtraction
    calculator = Calculator.new

    result = calculator.subtraction(3, 2)

    assert_equal 1, result
  end

  def test_multiply
    calculator = Calculator.new

    result = calculator.multiply(3, 2)

    assert_equal 6, result
  end

  def test_division
    calculator = Calculator.new

    result = calculator.division(10, 2)

    assert_equal 5, result
  end
end
