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
        morning_schedule << a[0]
        aux << a
      elsif(afternoon - time >= 0)
        afternoon -= time
        afternoon_schedule << a[0]
        aux << a
      end
    end
    display_schedule(track, morning_schedule, afternoon_schedule)
  end

  def display_schedule(track, m, a)
    puts "track #{track}"
    puts '----------------'
    puts "Morning"
    puts m.inspect
    puts '----------------'
    puts "Afternoon"
    puts a.inspect
    puts '################'
  end
end
