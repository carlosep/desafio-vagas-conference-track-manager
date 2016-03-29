require_relative 'main_methods.rb'
require_relative 'schedule.rb'
class Main
  mm = MainMethods.new
  conferences = mm.extract_times()

  schedule = Schedule.new
  puts schedule.fill_schedule(conferences)
end
