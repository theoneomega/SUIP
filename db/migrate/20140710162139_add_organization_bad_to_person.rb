class AddOrganizationBadToPerson < ActiveRecord::Migration
  def change
    add_column :people, :organization, :string
  end
end
