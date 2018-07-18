class Darksky < ApplicationRecord

  def self.getData(location)
    response = Faraday.get "https://api.darksky.net/forecast/#{Rails.application.credentials.dark_sky}/#{location.latitude},#{location.longitude}"
    JSON.parse(response.body)
  end

end