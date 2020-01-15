def time_conversion(minutes)
  hour = 0
  while minutes >= 60
    hour += 1
    minutes -= 60
  end
  if minutes < 10
    minute = "0" + minutes.to_s
  else
    minute = minutes.to_s
  end

  hour.to_s + ":" + minute.to_s
end


p time_conversion(239878923793247)
