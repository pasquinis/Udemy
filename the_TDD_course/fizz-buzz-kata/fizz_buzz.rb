require_relative 'fizz_buzz_engine'

class FizzBuzz
    def initialize(max_value)
        @max_value = max_value
    end

    def numbers
        (1..@max_value).to_a
    end

    def generate
        numbers.collect do |number|
         eng = FizzBuzzEngine.new(number)
         eng.value
        end
    end

    def multiple_of?(x, y)
        (x % y == 0)
    end
end
