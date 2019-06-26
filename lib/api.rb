require 'json'
require 'rest-client'

class API
  URL = "https://restcountries.eu/rest/v2/all?fields=name;capital"

  def get_countries_and_cities
    response = RestClient.get(URL)
    hash = JSON.parse(response)
  end

end
