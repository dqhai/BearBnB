class AddReferencesToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :pet, null: false, index: true, foreign_key: true
    add_reference :bookings, :user, null: false, index: true, foreign_key: true
  end
end
