class AddPersonIdToTattoo < ActiveRecord::Migration
  def change
    add_column :tattoos, :person_id, :integer
  end
end
