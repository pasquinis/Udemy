class FizzBuzz
    def initialize(max_value)
        @max_value = max_value
    end

    def numbers
        (1..@max_value).to_a
    end

    def generate
        numbers.collect do |number|
            if (number % 3 == 0)
                'Fizz'
            elsif (number % 5 == 0)
                'Buzz'
            else
                number
            end
        end
    end
end
