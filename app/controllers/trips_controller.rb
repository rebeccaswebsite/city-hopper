class TripsController < ApplicationController
  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
      @trip = Trip.new(trip_params)

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

      trip.update(trip_params)
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
      redirect_to welcomes_path
  end

  private

  def trip_params
      params.require(:trip).permit(:name, :user_id)
  end
end
