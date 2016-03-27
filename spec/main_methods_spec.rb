require 'spec_helper'

describe MainMethods do
  before do
    $stdin = StringIO.new("Test conference name 60min\n" +
                          "Name of a test conference lightning\n" +
                          "Another conference name for testing 45min\n\n")
  end

  after do
    $stdin = STDIN
  end

  mm = MainMethods.new

  it "returns an array with all the full strings inserted" do
    result = mm.inputs
    expect(result).to be == ["Test conference name 60min", "Name of a test conference lightning", "Another conference name for testing 45min"]
  end
  it "returns a multidimensional array with the conferences and its times" do
    array = ["Test conference name 60min",
             "Name of a test conference lightning",
             "Another conference name for testing 45min"]
    result = mm.extract_times(array)
    expect(result).to be == [["Test conference name 60min", "Name of a test conference lightning", "Another conference name for testing 45min"], [60, 5, 45]]
  end
end
