class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :flight_id
      t.integer :seat_id
      t.boolean :is_admin
      t.timestamps
    end
  end
end
