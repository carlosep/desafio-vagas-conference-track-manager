require_relative 'main_methods.rb'
## Execution ##


class Main
  mm = MainMethods.new

  puts 'Insert Conferences w/ its times (return twice to finish): '
  array = mm.inputs

  conferences = mm.extract_times(array)

  puts conferences.inspect
end
