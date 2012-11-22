class AddCoordinatesToTrees < ActiveRecord::Migration
  def change
  	add_column :trees, :gmaps, :boolean #not mandatory, see wiki
  	add_column :trees, :adress, :string
  end
end
