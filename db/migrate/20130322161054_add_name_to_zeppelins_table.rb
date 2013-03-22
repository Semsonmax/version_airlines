class AddNameToZeppelinsTable < ActiveRecord::Migration
  def change
    add_column  :zeppelins, :name, :string
  end
end
