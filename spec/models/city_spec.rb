require 'rails_helper'

RSpec.describe City do
  describe ".by_country_name" do
    context "with an exact country name" do
      it "includes cities with that name" do
        france = Country.create!(name: "France") #In Rails an exclamation point means that the method will throw an exception on failure rather than failing silently
        germany = Country.create!(name: "Germany")
        paris = france.cities.create!(name: "Paris")
        berlin = germany.cities.create!(name: "Berlin")

        cities = City.by_country_name(france.name)

        expect(cities).to include paris
        expect(cities).to_not include berlin
      end
    end

    context "with a lowercase country name" do
      it "includes cities with that name" do
        france = Country.create!(name: "France")
        germany = Country.create!(name: "Germany")
        paris = france.cities.create!(name: "Paris")
        berlin = germany.cities.create!(name: "Berlin")

        cities = City.by_country_name(france.name.downcase)

        expect(cities).to include paris
        expect(cities).to_not include berlin
      end
    end
  end
end
