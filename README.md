Project ideas:
Name ideas: Citibreak, CityWish, DestinationCity, CityList, CityHopper

- Travelling Wishlist website: users can submit places they want to go through a form with activities they want to do there (destination and activity)


A User can
- See their wishlist of all trips they want to go on
- Search for cities and countries
- A user can add a new trip to their wishlist (with a form)

MODELS
Models: User, Countries, Cities, Trip, CityTrip

User :name, :bio
 - has many trips
Trip :name, :user_id
 - belongs to user
 - has many city_trips
 - has many cities through city trips
CityTrip :trip_id, :city_id
 - belongs to trip
 - belongs to city
City :name, :info, :country_id
 - belongs to country
 - has many city trips
 - has many trips through city_trips
Country :name, :info
 - has many cities


VIEWS
- Welcome Page

User
- new: make a new user with a form
- edit: edit an existing user with a form
- show: see a user (name and bio), delete this user(redirect to welcome page)

Country
- index: see all countries
- show: see specific country

City
- index: see all cities
- show: see specific city

Trip
- new: the user can add a new trip
- edit: the user can edit a trip name
- show: the user can see a trip, link to add a city, and delete the trip

CityTrip
- show: see a specific user's city trips & delete a trip
- new: add a new city trip with a form (select city, country and user from a dropdown)
- edit: edit an existing city trip

CONTROLLER
- user_controller
- country_controller
- city_controller
- trip_controller

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
