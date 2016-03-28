class Schedule
  def initialize
    @result = ""
  end

  def fill_schedule(array)
    aux = []
    track = 0
    result = ""
    loop do
      track += 1
      result = set_schedule(array, aux, track)
      array -= aux
      break if ((array).length == 0)
    end
    result
  end

  private

  def set_schedule(array, aux, track)
    morning = 180
    afternoon = 240
    morning_schedule = []
    afternoon_schedule = []
    array.each do |a|
      time = a[1].to_i
      if(morning - time >= 0)
        morning -= time
        t = [a[0], time]
        morning_schedule << t
        aux << a
      elsif(afternoon - time >= 0)
        afternoon -= time
        t = [a[0], time]
        afternoon_schedule << t
        aux << a
      end
    end
    display_schedule(track, morning_schedule, afternoon_schedule)
  end

  def display_schedule(track, m, a, result = @result)
    t = Time.new(2016, 1, 1, 9,0,0)
    result += "Track #{track}:\n"
    m.each do |m|
      result += "#{t.strftime("%I:%M%p")} #{m[0]}\n"
      t += m[1]*60
    end
    result += "12:00PM Lunch\n"
    t = Time.new(2016, 1, 1, 13,0,0)
    a.each do |a|
      result += "#{t.strftime("%I:%M%p")} #{a[0]}\n"
      t += a[1]*60
    end
    if(t.hour < 16)
      result += "04:00PM Networking Event\n\n"
    else
      result += "#{t.strftime("%I:%M%p")} Networking Event\n\n"
    end
    @result = result
  end
end
