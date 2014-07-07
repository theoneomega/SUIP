class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.integer :category_id
      t.string :operational_area
      t.string :meeting_place
      t.text :modus_operandi

      t.timestamps
    end
  end
end
