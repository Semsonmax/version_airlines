class AddVoyagesTable < ActiveRecord::Migration
  def change
    create_table :voyages do |t|
      t.string :code
      t.string :airfield_depart
      t.string :airfield_arrive
      t.date :voyage_date
      t.integer :zeppelin_id
      t.timestamps
    end
  end
end
