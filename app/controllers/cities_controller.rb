class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def search
    @country = Country.find_by(name: params[:q])
    redirect_to country_path(@country)
  end
end
