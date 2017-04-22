class Timer
  attr_accessor :seconds
  def initialize(seconds=0)
    @seconds = seconds
  end

  def time_string
    hrs = seconds / 3600
    mins = seconds / 60 % 60
    secs = seconds % 60

    hour_hand, minute_hand, second_hand = [hrs, mins, secs].map do |t|
      if t < 10
        "0#{t}"
      else
        "#{t}"
      end
    end

    "#{hour_hand}:#{minute_hand}:#{second_hand}"
  end
end
