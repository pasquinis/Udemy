class Fibonacci
  def self.of(value)
    if value == 0
      0
    elsif value == 1
      1
    else
      self.of(value-1) + self.of(value-2)
    end
  end
end
