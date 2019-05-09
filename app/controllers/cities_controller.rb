class CitiesController < ApplicationController
  def index
    if params[:country_name].blank?
      @cities = City.all
    else
      @cities = City.by_country_name(params[:country_name])
    end
  end

  def show
    @city = City.find(params[:id])
  end

end
