class Organization < ActiveRecord::Base
  attr_accessible :category_id, :meeting_place, :modus_operandi, :name, :operational_area
  validates :name, :category_id, :operational_area, :presence => true
  has_many :person
  belongs_to :category
end
