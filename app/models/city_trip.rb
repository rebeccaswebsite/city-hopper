class CityTrip < ApplicationRecord
  belongs_to :trip
  belongs_to :city
  validates :trip_id, :city_id, presence: true

  def self.my_trips(user_id)
    self.all.select { |ct| ct.trip.user_id == user_id }
  end

  def trip_name
    self.trip.name
  end

  def city_name
    self.city.name
  end

end
