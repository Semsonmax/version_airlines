class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :seat_id
      t.boolean :is_admin, :default => false
      t.timestamps
    end
  end
end
