require 'minitest/autorun'
require_relative 'stack'

class TestStack < Minitest::Test

  def test_should_push_a_given_object
    stack = Stack.new

    stack.push(3)

    assert_equal 1, stack.size
    assert_equal 3, stack.top
  end

  def test_should_pop_an_element
    stack = Stack.new
    stack.push(2)

    element = stack.pop

    assert_equal 0, stack.size
    assert_equal 2, element
  end
end
