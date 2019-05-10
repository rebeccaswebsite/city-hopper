require 'pry'
require 'json'
require 'rest-client'

class API
  URL = "https://restcountries.eu/rest/v2/all?fields=name;capital"

  def get_countries_and_cities
    response = RestClient.get(URL)
    hash = JSON.parse(response)
    hash[2]
  end

  def parse_countries(raw_data)
    countries_hash = {}

    raw_data.each do |key, value|
        countries_hash[:name] = raw_data["name"]
    end
    countries_hash
    binding.pry
  end

  def parse_cities(raw_data)
    cities_hash = {}

    raw_data.each do |key, value|
        cities_hash[:name] = raw_data["capital"]
    end
    cities_hash
    binding.pry
  end

  def run
    parse_event_information(get_countries_and_cities)
  end

end

api = API.new
your_data = api.get_countries_and_cities
api.parse_countries(your_data)
api.parse_cities(your_data)
