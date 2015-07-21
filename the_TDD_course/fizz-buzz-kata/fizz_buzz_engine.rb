class FizzBuzzEngine

    MAPPING = { 3 => 'Fizz' , 5 => 'Buzz' , '3_and_5' => 'FizzBuzz' }

    def initialize(n)
        @n = n
    end

    def value
        return MAPPING['3_and_5'] if multiple_of_3_and_multiple_of_5
        return MAPPING[3] if multiple_of(3)
        return MAPPING[5] if multiple_of(5)
        @n
    end

    private
    def multiple_of_3_and_multiple_of_5
        multiple_of(3) and multiple_of(5)
    end

    def multiple_of(x)
        @n.modulo(x).zero?
    end
end
