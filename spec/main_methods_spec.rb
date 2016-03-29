require 'spec_helper'

describe MainMethods do
  mm = MainMethods.new

  context '#inputs' do
    it "returns an array with all the full strings inserted" do
      ARGV[0] = File.new("spec/test_input.txt", "r")
      result = mm.inputs
      expect(result).to be == ["Test conference name 60min",
                               "Name of a test conference lightning",
                               "Another conference name for testing 45min"]
    end
  end

  context '#extract_times' do
    it "returns a sorted multidimensional array with the conferences and its times" do
      array = ["Test conference name 60min",
               "Name of a test conference lightning",
               "Another conference name for testing 45min"]
      result = mm.extract_times(array)
      expect(result).to be == [["Test conference name 60min", 60],
                               ["Name of a test conference lightning", 5],
                               ["Another conference name for testing 45min", 45]]
    end
  end
end
