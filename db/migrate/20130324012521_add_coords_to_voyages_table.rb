class AddCoordsToVoyagesTable < ActiveRecord::Migration
  def change
    add_column  :voyages, :arrive_lat,  :float
    add_column  :voyages, :arrive_long, :float
    add_column  :voyages, :depart_lat,  :float
    add_column  :voyages, :depart_long, :float
  end
end
