require 'spec_helper'

describe Schedule do
  schedule = Schedule.new
  it "receives an array with conferences and its times and fit them nicely on a schedule" do
    result = schedule.fill_schedule([['name of the conference 60min', 60],
                                     ['long conference 100min', 100],
                                     ['another long conference 100min', 100],
                                     ['yet another one 90min', 90],
                                     ['the final conference 65min',65]])

    expect(result).to be == "Track 1:\n09:00AM name of the conference 60min\n" +
                            "10:00AM long conference 100min\n12:00PM Lunch\n" +
                            "01:00PM another long conference 100min\n" +
                            "02:40PM yet another one 90min\n" +
                            "04:10PM Networking Event\n\nTrack 2:\n" +
                            "09:00AM the final conference 65min\n" +
                            "12:00PM Lunch\n04:00PM Networking Event"
  end
end
