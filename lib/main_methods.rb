class MainMethods
  def inputs
    array = []
    File.open(ARGV[0]).each_line do |line|
      array << line.split("\n")[0]
    end
    array
  end

  def extract_times(array)
    extracted = []
    array.each do |a|
      temp = []
      temp << a
      if(a.split.last != 'lightning')
        temp << a.scan(/\d/).join('').to_i
        if(temp[1] > 240)
          puts "ERROR!\nAborted. All conference times must have a duration of 240min or shorter.\nFix your times on 'input.txt' and try again."
          exit
        end
      else
        temp << 5
      end
      extracted << temp
    end
    extracted
  end


end
