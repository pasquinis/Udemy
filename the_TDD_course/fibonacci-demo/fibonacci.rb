class Fibonacci
  def self.of(value)
    return 0 if value == 0
    return 1 if value == 1
    return self.of(value-1) + self.of(value-2)
  end
end
