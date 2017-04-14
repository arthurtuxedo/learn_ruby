def measure(repeat=1)
  start_time = Time.now
  repeat.times { yield }
  end_time = Time.now

  (end_time - start_time) / repeat
end
