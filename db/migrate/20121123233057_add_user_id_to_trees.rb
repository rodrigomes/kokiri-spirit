class AddUserIdToTrees < ActiveRecord::Migration
  def change
  	add_column :trees, :user_id, :integer #not mandatory, see wiki
  end
end
