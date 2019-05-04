class City < ApplicationRecord
  belongs_to :country
  has_many :city_trips
  has_many :trips, through: :city_trips
end
