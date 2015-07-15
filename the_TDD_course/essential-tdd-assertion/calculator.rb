class Calculator
  def sum(x, y)
    x + y
  end

  def subtract(x, y)
    x - y
  end
end

def verify(expected, actual, message)
  if actual == expected
    puts "\033[32m #{message} Passed \033[0m \n"
  else
    puts "Expected : #{expected} but got Actual : #{actual} \n"
    puts "\e[31m #{message} Failed \e[0m \n"
  end
end

calc = Calculator.new
verify(2, calc.sum(1, 1), 'Sum')
verify(1, calc.subtract(2, 1), 'Subtraction')
verify(3, calc.sum(1, 1), 'Sum')
