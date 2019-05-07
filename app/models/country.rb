class Country < ApplicationRecord
  has_many :cities
  validates :name, presence: true

  def country_cities
    self.cities.map {|city| city }
  end
end
