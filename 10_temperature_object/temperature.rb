class Temperature

  def self.from_celsius(c)
    Temperature.new({c: c})
  end

  def self.from_fahrenheit(f)
    Temperature.new({f: f})
  end

  def initialize(opts = {})
    @options = opts
  end

  def in_fahrenheit
    return @options[:f] if @options.has_key?(:f)
    return @options[:c]*(9.0/5.0)+32 if @options.has_key?(:c)
  end

  def in_celsius
    return @options[:c] if @options.has_key?(:c)
    return (@options[:f]-32)*(5.0/9.0) if @options.has_key?(:f)
  end
end

class Celsius < Temperature

  def initialize(c)
    @options = {c: c}
  end
end

class Fahrenheit < Temperature

  def initialize(f)
    @options = {f: f}
  end
end
