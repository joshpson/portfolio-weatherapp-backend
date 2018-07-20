class Location < ApplicationRecord
  belongs_to :user
  before_validation :fetch_geodata

  def fetch_geodata
    location = GoogleMap.getCoords(self.place_id)
    self.latitude = location["lat"]
    self.longitude = location["lng"]
  end

end
