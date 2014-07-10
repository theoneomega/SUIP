class AddMeetinPlaceDescriptionToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :meeting_place_description, :text
  end
end
