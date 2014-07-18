class CreateTattoos < ActiveRecord::Migration
  def change
    create_table :tattoos do |t|
      t.string :tattoo
      t.text :description
      t.boolean :head
      t.boolean :neck
      t.boolean :thorax
      t.boolean :left_arm
      t.boolean :right_arm
      t.boolean :left_forearm
      t.boolean :right_forearm
      t.boolean :left_hand
      t.boolean :right_hand
      t.boolean :hip
      t.boolean :left_thigh
      t.boolean :right_thigh
      t.boolean :left_leg
      t.boolean :right_leg
      t.boolean :left_foot
      t.boolean :right_foot
      t.boolean :front
      t.boolean :back

      t.timestamps
    end
  end
end
