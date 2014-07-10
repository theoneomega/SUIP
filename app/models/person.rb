class Person < ActiveRecord::Base
  attr_accessible :addictions, :alias, :complexion, :heigh, :name, :last_name, :last_name2
  attr_accessible :organization_id, :phone, :rank, :recidence, :record, :sex, :weight, :member
  attr_accessible :drivers_licence, :state, :ocupation, :contacted_by, :peculiarities, :file_reports, :observations
  attr_accessible :birthday, :tattoos_attributes, :organization
  
  validates :name, :last_name, :organization_id, :member, :sex, :presence => true
  belongs_to :organization
  has_many :tattoos
  has_many :vehicles
  accepts_nested_attributes_for :tattoos, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :vehicles, :allow_destroy => true, :reject_if => :all_blank
end
