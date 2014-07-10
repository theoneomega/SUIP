class Vehicle < ActiveRecord::Base
  attr_accessible :brand, :color, :driver, :model, :plate, :vehicle_year, :person_id
  belongs_to :person
end
