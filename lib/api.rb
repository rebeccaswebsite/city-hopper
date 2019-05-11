require 'pry'
require 'json'
require 'rest-client'
require 'byebug'

class API
  URL = "https://restcountries.eu/rest/v2/all?fields=name;capital"

  def get_countries_and_cities
    response = RestClient.get(URL)
    hash = JSON.parse(response)
  end

  # def parse_countries(raw_data)
    
  #   countries_array = []

  #   raw_data.each do |country|

  #     countries_hash = {}

  #       countries_hash[:name] = country["name"]

  #       countries_array << countries_hash
  #   end
  #   countries_array
  # end

  # def parse_cities(raw_data)
  
  #   cities_array = []
  #   raw_data.each do |country|
  #     cities_hash = {}
  #       cities_hash[:name] = country["capital"]
  #       cities_array << cities_hash
  #   end
  #   cities_array
  # end

end
