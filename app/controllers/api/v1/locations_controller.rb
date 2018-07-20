class Api::V1::LocationsController < ApplicationController

  before_action :find_location, only: [:show]
  before_action :authenticate_user

  def index
    @locations = Location.all
    render json: @locations
  end

  def create
     @location = Location.new(location_params)
     @location.user = current_user
     if @location.save
      render json: {location: @location, status: :created}
     else
      render json: {errors: @location.errors, tatus: :unprocessable_entity}
     end
  end

  def search
    @results = GoogleMap.searchPlaces(location_params[:query])
    render json: @results
  end

  def show
    weather = Darksky.getData(@location)
    render json: {location: @location, weather: weather}
  end

  private

  def location_params
    params.permit(:user_id, :name, :latitude, :longitude, :home, :time, :query, :place_id)
  end

  def find_location
    @location = Location.find(params[:id])
  end

end
