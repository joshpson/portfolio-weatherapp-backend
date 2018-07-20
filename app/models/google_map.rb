class GoogleMap < ApplicationRecord

  def self.searchPlaces(query)
    formatted_query = query.split(" ").join("+")
    response = Faraday.get "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=#{formatted_query}&types=(cities)&key=#{Rails.application.credentials.google_maps}"
    JSON.parse(response.body)
  end


end
