class AddFlightsTable < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :code
      t.string :airport_depart
      t.string :airport_arrive
      t.date :flight_date
      t.integer :airplane_id
      t.timestamps
    end
  end
end
