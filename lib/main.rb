require_relative 'main_methods.rb'
require_relative 'schedule.rb'
class Main

  mm = MainMethods.new

  array = mm.inputs
  conferences = mm.extract_times(array)

  s = Schedule.new
  schedule = s.fill_schedule(conferences)

  puts schedule
end
