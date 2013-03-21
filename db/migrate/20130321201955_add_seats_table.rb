class AddSeatsTable < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :flight_id
      t.integer :user_id
      t.integer :row
      t.integer :column
      t.timestamps
    end
  end
end
