def add(x,y)
  return x+y
end

def subtract(x,y)
  return x-y
end

def sum(arr)
  return arr.inject(0){|sum,x| sum + x }
end

def multiply(arr)
  return arr.inject(:*)
end

def power(x,y)
  return x**y
end

def factorial(num)
  fact = num
  (num-1).downto(1) do |i|
    fact *= i
  end
  return fact
end
