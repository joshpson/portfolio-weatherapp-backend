class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :metric
  has_many :locations
end
