require 'minitest/autorun'
require_relative 'stack'

class TestStack < Minitest::Test

  def test_should_be_empty_when_initialize
    stack = Stack.new

    assert stack.empty?
  end

  def test_stack_after_n_pushes_the_stack_is_not_empty
    stack = Stack.new
    stack.push(1)
    stack.push(1)
    stack.push(1)

    refute stack.empty?
  end

  def test_after_n_pushes_and_empty_stack_the_size_is_n
    stack = Stack.new

    stack.push(1)
    stack.push(1)
    stack.push(1)

    assert_equal 3, stack.size
  end

  def test_stack_with_n_elements_after_n_pop_stack_is_empty
    stack = Stack.new
    stack.push(1)
    stack.push(1)
    stack.push(1)

    stack.pop
    stack.pop
    stack.pop

    assert stack.empty?
  end

  def test_should_rise_an_error_if_i_pop_element_on_empty_stack
    stack = Stack.new

    assert_raises(Exception) {
      stack.pop
    }

  end

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
