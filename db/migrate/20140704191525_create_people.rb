class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.integer :organization_id
      t.string :sex
      t.string :alias
      t.text :record
      t.string :rank
      t.string :heigh
      t.string :complexion
      t.string :weight
      t.string :recidence
      t.text :addictions
      t.string :phone
      t.string :last_name
      t.string :last_name2
      t.string :drivers_licence
      t.string :state
      t.string :ocupation
      t.string :contacted_by
      t.boolean :peculiarities
      t.string :file_reports
      t.text :observations

      t.timestamps
    end
  end
end
