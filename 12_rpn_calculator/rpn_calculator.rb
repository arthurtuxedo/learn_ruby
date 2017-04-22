class RPNCalculator
  @@stack = []

  def push(operand)
    @@stack << operand
  end

  def plus
    # This code works in pry, yet fails the test. Find out why.
    raise "calculator is empty" if @@stack.empty?
    addition = @@stack.pop
    @@stack[-1] += addition
  end

  def minus
    raise "calculator is empty" if @@stack.empty?
    subtraction = @@stack.pop
    @@stack[-1] -= subtraction
  end

  def times
    raise "calculator is empty" if @@stack.empty?
    multiplication = @@stack.pop.to_f
    @@stack[-1] *= multiplication
  end

  def divide
    raise "calculator is empty" if @@stack.empty?
    division = @@stack.pop.to_f
    @@stack[-1] /= division
  end

  def value
    @@stack[-1]
  end
end
