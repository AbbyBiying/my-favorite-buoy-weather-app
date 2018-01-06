require 'spec_helper'
require 'webmock/rspec'

RSpec.describe StationObservation, type: :model do
  describe "#get_buoys" do
    it "should set a list of buoys within 100 nautical miles of 40°N, 73°W." do
      stub_ndbc_rss
      @station_observation = StationObservation.new
      @station_observation.get_buoys

      expect(@station_observation.station_channel_title).to eql("Channel Title: NDBC - Station Observations near 40N 73W")
       
       # expect the Station ID of the first station on the list is 44025
      expect(@station_observation.stations_hash.keys.first).to eql("44025")
       expect(@station_observation.stations_hash.values.first.title).to eql("Station 44025 - LONG ISLAND - 30 NM SOUTH OF ISLIP, NY")
      
      # expect a station on the list of buoys within 100 nautical miles of 40°N, 73°W has ID SDHN4
      expect(@station_observation.stations_hash.to_a[3][0]).to eql("SDHN4")
    end
  end
end
