class User < ApplicationRecord
  has_many :bookings
  has_many :rooms, through: :bookings
  has_secure_password
  # validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
end
