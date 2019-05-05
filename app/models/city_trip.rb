class CityTrip < ApplicationRecord
  belongs_to :trip
  belongs_to :city
  validates :trip_id, :city_id, presence: true
end
