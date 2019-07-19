# Introduction
CityHopper is an app for you to keep track of your city break getaways. You can easily make an itinerary for any trip you are planning to go on, where you may be moving from city to city.

This project was built entirely using Ruby on Rails, with an MVC structure to allow for frontend functionality as well. Using Active Record, we set up a database in SQLite, which we pulled data into using an external API. 

# Getting Started

Clone the Github repository onto your machine using the terminal command 

   git clone <url here> 

You can find the necessary url on the right hand side of the Github repository. 

# Create Your Server

Once you’re in the project folder, run 

    rails db:migrate 

To set up your database. Next run

   rail	s db:seed

To populate your database with the countries and cities which are browsable on the app. Then,

   rails s 

To run the API needed for the page to load properly.

# Open the app 
To open the app on your machine, enter the following into your terminal
	
	open index.html

You’re now able to create an account and start planning your own getaways! 


Thank you for checking out CityHopper :) 