class Calculator
  def sum(x, y)
    x + y
  end
end

calc = Calculator.new
result = calc.sum(1,1)

if result == 2
  puts "\033[32m Sum Passed \033[0m"
else
  puts "\e[31m Sum Failed \e[0m"
end
