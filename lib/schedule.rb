class Schedule
  def initialize
  end

  def fill_schedule(array)
    aux = []
    track = 0
    loop do
      track += 1
      set_schedule(array, aux, track)
      array -= aux
      break if ((array).length == 0)
    end
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

  def display_schedule(track, m, a)
    t = Time.new(2016, 1, 1, 9,0,0)
    puts "Track #{track}:"
    m.each do |m|
      puts "#{t.strftime("%I:%M%p")} #{m[0]}"
      t += m[1]*60
    end
    puts '12:00PM Lunch'
    t = Time.new(2016, 1, 1, 13,0,0)
    a.each do |a|
      puts "#{t.strftime("%I:%M%p")} #{a[0]}"
      t += a[1]*60
    end
    if(t.hour < 16)
      puts "04:00PM Networking Event"
    else
      puts "#{t.strftime("%I:%M%p")} Networking Event"
    end
    puts " "
  end
end
