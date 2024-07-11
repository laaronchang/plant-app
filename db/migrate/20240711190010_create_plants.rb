class CreatePlants < ActiveRecord::Migration[7.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :species
      t.string :plant_image
      t.string :sun_amount
      t.integer :days_water
      t.string :description

      t.timestamps
    end
  end
end
