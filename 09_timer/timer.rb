#Why is it looking for a method called seconds? time_string should be the only method.

class Timer
  attr_accessor :seconds
  def initialize(seconds=0)
    @seconds = seconds
  end

  # def seconds
  #   @seconds
  # end
  #
  # def seconds=(new_seconds)
  #   @seconds = new_seconds
  # end

  def self.time_string(seconds)
    self.hours = seconds / 3600
    self.minutes = seconds / 60
    self.seconds = seconds % 60
    "#{hours.to_s}:#{minutes.to_s}:#{seconds.to_s}"
  end
end
