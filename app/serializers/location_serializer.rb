class LocationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :latitude, :longitude, :home, :time, :image_url
  belongs_to :user
end
