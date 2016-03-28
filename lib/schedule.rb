class Schedule
  def initialize
  end

  def fill_schedule(array)
    aux = []
    track = 0
    loop do
      #One Method
      morning = 180
      afternoon = 240
      morning_schedule = []
      afternoon_schedule = []
      track += 1
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

      #Another Method
      puts "track #{track}"
      puts '----------------'
      puts "Morning"
      puts morning_schedule.inspect
      puts '----------------'
      puts "Afternoon"
      puts afternoon_schedule.inspect
      puts '################'
      array -= aux
      break if ((array).length == 0)
    end
  end
end
