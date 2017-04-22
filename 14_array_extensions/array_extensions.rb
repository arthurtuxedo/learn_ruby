class Array

  def sum
    0 if self.empty?
    sum = 0
    each { |element|  sum += element }
    sum
  end

  def square
    [] if self.empty?
    map { |element| element**2 }
  end

  def square!
    map! { |element| element**2 }
  end

end
