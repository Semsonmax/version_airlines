class AddColumnsToZeppelins < ActiveRecord::Migration
  def change
    add_column  :zeppelins, :description, :text
    add_column  :zeppelins, :image, :string
    add_column  :zeppelins, :engines, :text
    add_column  :zeppelins, :year_built, :integer
  end
end
