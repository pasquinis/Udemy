require 'minitest/autorun'
require_relative 'fizz_buzz'

class TestFizzBuzz < Minitest::Test
    def test_generate_numers_from_1_to_100
        obj = FizzBuzz.new(100)

        result = obj.numbers

        assert_equal((1..100).to_a, result)
    end
end
