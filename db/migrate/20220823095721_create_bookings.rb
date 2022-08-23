class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :pets, null: false, foreign_key: true
      t.references :users, null: false, foreign_key: true
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
