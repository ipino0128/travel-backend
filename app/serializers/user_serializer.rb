class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :itineraries, :destinations
end
