class CityTripsController < ApplicationController
    before_action :require_login

    def index
        @my_city_trips = CityTrip.my_trips(session[:user_id])
    end

    def show
        @city_trip = CityTrip.find(params[:id])
    end

    def new
        @city_trip = CityTrip.new
    end

    def create
        city_trip = CityTrip.new(city_trips_params)
        city_trip.save
        if city_trip.save
            redirect_to city_trip_path(city_trip)
        else
            render :edit
        end
    end

    def edit
        @city_trip = CityTrip.find(params[:id])
    end

    def update
        city_trip = CityTrip.find(params[:id])

        city_trip.update(city_trips_params)
        if city_trip.save
            redirect_to city_trip_path(city_trip)
        else
            render :edit
        end
    end

    def destroy
      city_trip = CityTrip.find(params[:id])
      city_trip.destroy
      flash[:notice] = "Your wishlist item has been deleted."
      redirect_to welcome_path
    end

    private

    def city_trips_params
        params.require(:city_trip).permit(:trip_id, :city_id)
    end

    def require_login
     return head(:forbidden) unless session.include? :user_id
   end
end
