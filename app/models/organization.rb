class Organization < ActiveRecord::Base
  attr_accessible :category_id, :meeting_place, :modus_operandi, :name, :operational_area, :person_attributes
  attr_accessible :meeting_place_description
  validates :name, :category_id, :operational_area, :presence => true
  has_many :person
  belongs_to :category
  accepts_nested_attributes_for :person
end
