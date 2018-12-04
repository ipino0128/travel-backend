class ItinerarySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :img_url, :user_id, :destination_id
end
