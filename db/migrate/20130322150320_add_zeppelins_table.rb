class AddZeppelinsTable < ActiveRecord::Migration
  def change
    create_table :zeppelins do |t|
      t.string :style
      t.integer :number_of_rows
      t.integer :number_of_columns
      t.timestamps
    end
  end
end
