class AddPersonIdToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :person_id, :integer
  end
end
