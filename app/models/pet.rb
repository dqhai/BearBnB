class Pet < ApplicationRecord
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  # has_many :users, through: :bookings

  belongs_to :user

  include PgSearch::Model

  pg_search_scope :search_by_name_and_species,
                  against: %i[name species],
                  using:{
                    tsearch: { prefix: true }
                  }
end
