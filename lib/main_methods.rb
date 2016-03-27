class MainMethods
  ## Methods ##
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
    times = []
    array.each do |a|
      if(a.split.last != 'lightning')
        times << a.scan(/\d/).join('').to_i
      else
        times << 5
      end
    end
    extracted = [array,times]
  end
end
