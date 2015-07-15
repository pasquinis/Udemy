class Calculator
  def sum(x, y)
    x + y
  end

  def subtract(x, y)
    x - y
  end


  def verify(expected, actual, message)
    if actual == expected
      puts "\033[32m #{message} Passed \033[0m"
    else
      puts "\e[31m #{message} Failed \e[0m"
    end
  end
end

calc = Calculator.new
calc.verify(2, calc.sum(1,1), 'Sum')

result =  calc.subtract(2,1)
if result == 1
  puts "\033[32m Subtraction Passed \033[0m"
else
  puts "\e[31m Subtraction Failed \e[0m"
end
