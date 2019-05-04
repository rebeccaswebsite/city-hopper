class CityTrip < ApplicationRecord
  belongs_to :trip
  belongs_to :city
end
