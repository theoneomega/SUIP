class Tattoo < ActiveRecord::Base
  attr_accessible :description, :person_id, :tattoo, :tattoo_cache
  belongs_to :person
  mount_uploader :tattoo, TattooUploader
  validates :tattoo, :presence => true
  
end
