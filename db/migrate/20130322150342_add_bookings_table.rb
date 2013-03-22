class AddBookingsTable < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :traveler_id
      t.integer :seat_id
      t.integer :voyage_id
      t.timestamps
    end
  end
end
