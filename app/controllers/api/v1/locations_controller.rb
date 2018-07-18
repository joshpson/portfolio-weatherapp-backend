class Api::V1::LocationsController < ApplicationController

  before_action :find_location, only: [:show]

  def index
    @locations = Location.all
    render json: @locations
  end

  def show
    weather = Darksky.getData(@location)
    render json: {location: @location, weather: weather}
  end

  private

  def location_params
    params.permit(:user_id, :name, :latitude, :longitude, :home, :time)
  end

  def find_location
    @location = Location.find(params[:id])
  end

end
