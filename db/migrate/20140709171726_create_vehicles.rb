class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :brand
      t.integer :vehicle_year
      t.string :plate
      t.string :model
      t.string :color
      t.boolean :driver

      t.timestamps
    end
  end
end
