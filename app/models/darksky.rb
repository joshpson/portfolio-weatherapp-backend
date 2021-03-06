class Darksky < ApplicationRecord

  def self.getData(location, metric)
    units = metric ? 'si' : 'us'
    response = Faraday.get "https://api.darksky.net/forecast/#{Rails.application.credentials.dark_sky}/#{location.latitude},#{location.longitude}?units=#{units}"
    JSON.parse(response.body)
  end

  def self.getTimeMachineData(location, metric, time)
    units = metric ? 'si' : 'us'
    response = Faraday.get "https://api.darksky.net/forecast/#{Rails.application.credentials.dark_sky}/#{location.latitude},#{location.longitude},#{time}?units=#{units}"
    JSON.parse(response.body)
  end

end
