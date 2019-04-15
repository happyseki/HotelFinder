class Room < ApplicationRecord
  belongs_to :hotel
  has_many :bookings
  has_many :users, through :bookings
end
