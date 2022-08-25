class Pet < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  # has_many :users, through: :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
end
