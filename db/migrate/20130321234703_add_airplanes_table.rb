class AddAirplanesTable < ActiveRecord::Migration
  def change
    create_table :airplanes do |t|
      t.string :style
      t.integer :number_of_rows
      t.integer :number_of_columns
      t.timestamps
    end
  end
end
