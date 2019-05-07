class Trip < ApplicationRecord
  belongs_to :user
  has_many :city_trips
  has_many :cities, through: :city_trips
  validates :name, :user_id, presence: true

  def trip_desination
    self.cities.map {|city| city }
  end
end
