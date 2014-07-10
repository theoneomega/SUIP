class CreateTattoos < ActiveRecord::Migration
  def change
    create_table :tattoos do |t|
      t.string :tattoo
      t.text :description
      t.integer :person_id

      t.timestamps
    end
  end
end
