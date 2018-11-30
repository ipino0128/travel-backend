class ItinerarySerializer < ActiveModel::Serializer
  attributes :id, :description, :user, :destination
end
