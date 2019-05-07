User.destroy_all
Trip.destroy_all
Country.destroy_all
City.destroy_all
CityTrip.destroy_all

rebecca = User.create(name: "Rebecca", bio: "Londoner with wanderlust")
kev = User.create(name: "Kev", bio: "World Cup Enthusiast")

winter_break = Trip.create(name: "Winter Break", user: kev)
summer_holiday = Trip.create(name: "Summer Holiday", user: kev)
autumn_weekend =  Trip.create(name: "Autumn Weekend", user: rebecca)

united_kingdom = Country.create(name: "United Kingdom", info: "The United Kingdom, made up of England, Scotland, Wales and Northern Ireland, is an island nation in northwestern Europe.")
united_states = Country.create(name: "United States of America", info: "The United States of America, commonly known as the United States or America, is a country comprising 50 states with a population of over 327 million people.")

london = City.create(name: "London", info: "London is the capital city of the United Kingdom.", country: united_kingdom)
phoenix = City.create(name: "Phoenix", info: "Phoenix is the capital of the southwestern U.S. state of Arizona.", country: united_states)
new_yok = City.create(name: "New York", info: "New York City is the most populous city in the United States.", country: united_states)
edinburgh = City.create(name: "Edinburgh", info: "City in Scotland", country: united_kingdom)


CityTrip.create(city: london, trip: winter_break)
CityTrip.create(city: phoenix, trip: autumn_weekend)
CityTrip.create(city: new_yok, trip: summer_holiday)
