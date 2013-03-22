class AddTravelersTable < ActiveRecord::Migration
  def change
    create_table :travelers do |t|
      t.string :name
      t.string :email
      t.boolean :is_admin
      t.timestamps
    end
  end
end
