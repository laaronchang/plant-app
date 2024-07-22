class AddUseridToPlants < ActiveRecord::Migration[7.1]
  def change
    add_column :plants, :user_id, :integer
  end
end
