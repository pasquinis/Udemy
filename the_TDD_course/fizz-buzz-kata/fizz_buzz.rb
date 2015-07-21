class FizzBuzz
    MAPPING = { 3 => 'Fizz' , 5 => 'Buzz' , '3_and_5' => 'FizzBuzz' }

    def initialize(max_value)
        @max_value = max_value
    end

    def numbers
        (1..@max_value).to_a
    end

    def generate
        numbers.collect do |number|
          calculate_the_response(number)
        end
    end

    private

    def calculate_the_response(number)
        return MAPPING['3_and_5'] if multiple_of_3_and_multiple_of_5?(number)
        return MAPPING[3] if multiple_of?(3, number)
        return MAPPING[5] if multiple_of?(5, number)
        number
    end

    def multiple_of_3_and_multiple_of_5?(number)
        multiple_of?(3, number) and multiple_of?(5, number)
    end

    def multiple_of?(x, number)
        number.modulo(x).zero?
    end
end
