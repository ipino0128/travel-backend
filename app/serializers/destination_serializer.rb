class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :name, :itineraries, :users
end
