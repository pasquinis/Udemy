require 'minitest/autorun'
require_relative 'fizz_buzz'

class TestFizzBuzz < Minitest::Test
    def test_generate_numers_from_1_to_100
        obj = FizzBuzz.new(100)

        result = obj.numbers

        assert_equal((1..100).to_a, result)
    end

    def test_generate_fizz_for_multiple_of_3
        obj = FizzBuzz.new(3)

        result = obj.generate

        assert_equal('Fizz', result[2])
    end

    def test_generate_buzz_for_multiple_of_5
        obj = FizzBuzz.new(5)

        result = obj.generate

        assert_equal('Buzz', result[4])
    end

    def test_generate_fizzbuzz_for_multiple_of_15
        obj = FizzBuzz.new(15)

        result = obj.generate

        assert_equal('FizzBuzz', result[14])
    end

    def test_generate_a_number_for_multiple_of_2
        obj = FizzBuzz.new(2)

        result = obj.generate

        assert_equal(2, result[1])
    end
end
