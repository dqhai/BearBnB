class Pet < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  # has_many :users, through: :bookings

  belongs_to :user
end
