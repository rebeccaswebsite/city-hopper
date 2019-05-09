class TripsController < ApplicationController
  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
      @trip = Trip.new(name: params[:trip][:name], user_id: session[:user_id])
      if @trip.save
          redirect_to trip_path(@trip)
        else
            flash[:errors] = @trip.errors.full_messages
            flash[:data] = @trip
            redirect_to new_trip_path
        end
  end

  def edit
      @trip = Trip.find(params[:id])
  end

  def update
      trip = Trip.find(params[:id])
      trip.update(name: params[:trip][:name], user_id: session[:user_id])
      if trip.save
          redirect_to trip_path(trip)
    else
        flash[:errors] = trip.errors.full_messages
        flash[:data] = trip
        redirect_to edit_trip_path
    end
  end

  def destroy
      @trip = Trip.find(params[:id])
      @trip.destroy
      flash[:notice] = "Your trip has been deleted."
      redirect_to city_trips_path
  end

end
