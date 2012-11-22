class AddCoordinatesToTrees < ActiveRecord::Migration
  def change
  	add_column :trees, :gmaps, :boolean #not mandatory, see wiki
  	add_column :trees, :street, :string
  	add_column :trees, :city, :string
  	add_column :trees, :country, :string
  end
end
