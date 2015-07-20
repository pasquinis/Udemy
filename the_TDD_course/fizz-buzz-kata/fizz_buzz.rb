class FizzBuzz
    def initialize(max_value)
        @max_value = max_value
    end

    def numbers
        (1..@max_value).to_a
    end

    def generate
        numbers.collect do |number|
            if multiple_of?(number, 3) and multiple_of?(number, 5)
                'FizzBuzz'
            elsif multiple_of?(number, 3)
                'Fizz'
            elsif multiple_of?(number, 5)
                'Buzz'
            else
                number
            end
        end
    end

    def multiple_of?(x, y)
        (x % y == 0)
    end
end
