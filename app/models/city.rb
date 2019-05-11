class City < ApplicationRecord
  belongs_to :country
  has_many :city_trips
  has_many :trips, through: :city_trips
  # validates :name, :country_id, presence: true

  def self.by_country_name(country_name)
    joins(:country).where("lower(countries.name) = ?", country_name.downcase)
  end

end
