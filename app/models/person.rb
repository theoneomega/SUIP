class Person < ActiveRecord::Base
  attr_accessible :addictions, :alias, :complexion, :heigh, :name, :last_name, :last_name2
  attr_accessible :organization_id, :phone, :rank, :recidence, :record, :sex, :weight, :member
  attr_accessible :drivers_licence, :state, :ocupation, :contacted_by, :peculiarities, :file_reports, :observations
  attr_accessible :birthday
  
  validates :name, :last_name, :last_name2,:organization_id, :member, :sex, :presence => true
  belongs_to :organization
end
