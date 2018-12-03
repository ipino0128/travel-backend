class User < ApplicationRecord
  has_many :itineraries
  has_many :destinations, through: :itineraries
  has_secure_password
  validates :username, uniqueness: {case_sensitive: false}
end
