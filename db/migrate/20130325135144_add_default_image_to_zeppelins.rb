class AddDefaultImageToZeppelins < ActiveRecord::Migration
  def change
    change_column :zeppelins, :image, :string, :default => 'zep1.jpg'
  end
end
