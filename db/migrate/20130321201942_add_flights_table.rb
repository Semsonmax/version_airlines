class AddFlightsTable < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :code
      t.string :airport_depart
      t.string :airport_arrive
      t.date :date_depart
      t.date :date_arrive
      t.integer :number_of_rows
      t.integer :number_of_columns
      t.timestamps
    end
  end
end
