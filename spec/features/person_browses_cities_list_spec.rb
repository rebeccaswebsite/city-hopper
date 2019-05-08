require 'rails_helper'

feature "person browses cities list" do
  scenario "succesfully" do
    country = Country.create!(name: "Spain")
    city = country.cities.create!(name: "Madrid")

    visit cities_url

    expect(page).to have_content city.name
  end

  scenario "searches for exact city" do
    france = Country.create!(name: "France")
    germany = Country.create!(name: "Germany")
    paris = france.cities.create!(name: "Paris")
    berlin = germany.cities.create!(name: "Berlin")
    visit cities_url

    fill_in :country_name, with: france.name
    click_button('Search')

    expect(page).to have_content paris.name
    expect(page).to_not have_content berlin.name
  end

  scenario "searches for lowercase city" do
    france = Country.create!(name: "France")
    germany = Country.create!(name: "Germany")
    paris = france.cities.create!(name: "Paris")
    berlin = germany.cities.create!(name: "Berlin")
    visit cities_url

    fill_in :country_name, with: france.name.downcase
    click_button('Search')

    expect(page).to have_content paris.name
    expect(page).to_not have_content berlin.name
  end

end
