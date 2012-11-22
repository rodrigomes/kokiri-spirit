class CreateTrees < ActiveRecord::Migration
  def change
    create_table :trees do |t|
      t.string :nickname
      t.text :content
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
