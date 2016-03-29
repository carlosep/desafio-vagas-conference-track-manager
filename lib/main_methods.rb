class MainMethods
  def inputs
    array = []
    File.open(ARGV[0]).each_line do |line|
      array << line.split("\n")[0]
    end
    array
  end

  def extract_times(array = inputs)
    extracted = []
    array.each do |a|
      temp = []
      value = a.scan(/\d/).join('').to_i
      if(value > 240)
        puts "ERROR!\nAborted. All conference times must have a duration of 240min or shorter.\nFix your times on 'input.txt' and try again."
        exit
      elsif(a.split.last == 'lightning')
        temp[1] = 5
      else
        temp[1] = value
      end
      temp[0] = a
      extracted << temp
    end
    extracted
  end


end
