class ChangeColumnsCoordsInVoyagesToDefault0 < ActiveRecord::Migration
  def change
    change_column_default :voyages, :arrive_lat, 0
    change_column_default :voyages, :arrive_long, 0
    change_column_default :voyages, :depart_lat, 0
    change_column_default :voyages, :depart_long, 0
  end
end
