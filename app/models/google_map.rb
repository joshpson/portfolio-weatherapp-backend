class GoogleMap < ApplicationRecord

  def self.searchPlaces(query)
    formatted_query = query.split(" ").join("+")
    response = Faraday.get "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=#{formatted_query}&types=(cities)&key=#{Rails.application.credentials.google_maps}"
    JSON.parse(response.body)
  end

  def self.getCoords(place_id)
    response = Faraday.get "https://maps.googleapis.com/maps/api/place/details/json?placeid=#{place_id}&key=#{Rails.application.credentials.google_maps}"
    json = JSON.parse(response.body)
    json["result"]["geometry"]["location"]
  end


end
