require 'sinatra'
require 'sinatra/contrib'
require 'rss'
require 'open-uri'

get "/" do
  @station_observation = StationObservation.new
  @station_observation.get_buoys
  if @station_observation.error
    erb :error
  else
    erb :index
  end
end

post "/" do
  result = { result: params.keys }
  json result
end


class StationObservation
  attr_accessor :station_channel_title, :stations_hash, :error

  def initialize
  end

  def get_buoys

    ndbc_uri = URI.parse('http://www.ndbc.noaa.gov/rss/ndbc_obs_search.php?lat=40N&lon=73W&radius=100')  
    response = OpenURI.open_uri(ndbc_uri)
    
    feed = RSS::Parser.parse(response)

    raise StandardError, "RSS ERROR" unless feed

    @station_channel_title = "Channel Title: #{feed.channel.title}" 

    @stations_hash = {} 

    feed.items.each do |item|
      station_id = item.title[/(?<=Station )\w*/]
      # set stations hash key as station id, value as item
      @stations_hash[station_id] = item
    end


  rescue => the_error
    warn @error = "Error: #{the_error.message}"
  end 
end
