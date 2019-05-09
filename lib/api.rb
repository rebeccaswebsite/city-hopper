require 'pry'
require 'json'
require 'rest-client'

class API
  URL = "https://restcountries.eu/rest/v2/all"

  def get_countries_and_cities
    response = RestClient.get(URL)
    hash = JSON.parse(response)
  end

  def parse_event_information(raw_data)
    countries_hash = {}

    raw_data.each do |country, info|
      binding.pry
      "hi"
      country.each do |key, value|
        binding.pry
        "hi"
        countries_hash[:name] = info[:name]
        countries_hash[:capital] = info[:capital]

      end
    end
    countries_hash

  end

  def run
    parse_event_information(get_countries_and_cities)
  end

end

api = API.new
your_data = api.get_countries_and_cities
api.parse_event_information(your_data)
