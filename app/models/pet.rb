class Pet < ApplicationRecord
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  # has_many :users, through: :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user

  include PgSearch::Model

  pg_search_scope :search_by_name_and_species,
                  against: %i[name species],
                  using:{
                    tsearch: { prefix: true }
                  }
end
