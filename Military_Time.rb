def convert_time(time)

  if time.to_s[-2..-1].to_i > 60 || time > 2400
    return "Invalid time."
  elsif time < 60
    if time > 10
      return "12:#{time} AM"
    else
      return "12:0#{time} AM"
    end

  elsif time == 2400
    return "12:00 AM"
  else
    hour = ""
    min = ""

    a = time.to_s

    if a.length == 4
      hour = a[0] + a[1]
      min = a[2] + a[3]
    else
      hour = a[0]
      min = a[1] + a[2]
    end

    if hour.to_i < 12
      hour + ":" + min + " AM"
    elsif hour.to_i > 12 && hour.to_i < 13
      hour + ":" + min + "PM"
    else
      (hour.to_i - 12).abs.to_s + ":" + min + " PM"
    end

  end



end

puts convert_time(1261)
