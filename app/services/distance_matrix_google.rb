require 'httparty'
require 'json'

class DistanceMatrixService
  include HTTParty
  base_uri 'https://maps.googleapis.com/maps/api/distancematrix'

  def initialize(api_key)
    @api_key = api_key
  end

  def get_distances(origins, destinations)
    options = {
      query: {
        origins: origins.join('|'),
        destinations: destinations.join('|'),
        key: @api_key
      }
    }
    self.class.get('/json', options)
  end
end

api_key = 'API KEY'
origins = ['Singapore 570165']
destinations = ['Singapore 569933']

service = DistanceMatrixService.new(api_key)
response = service.get_distances(origins, destinations)

distance = response["rows"][0]["elements"][0]["distance"]["value"]
duration = response["rows"][0]["elements"][0]["duration"]["value"]

p "#{distance} metres"
p "#{duration} seconds"

# if google maps show 9mins fastest, the API reports the end of the range 9-14, return 14
