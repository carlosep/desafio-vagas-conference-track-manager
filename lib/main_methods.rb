class MainMethods
  def inputs
    var = 'init'
    array = []
    while(var != '')
      var = gets.chomp
      array << var;
    end
    array.pop
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
