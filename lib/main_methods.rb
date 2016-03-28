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
      else
        temp << 5
      end
      extracted << temp
    end
    extracted
  end


end
