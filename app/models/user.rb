class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, :last_name, :phone_number,  :last_name2, :email, :username, :presence => true
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_ids
  attr_accessible :first_name, :last_name, :last_name2, :phone_number, :username, :admin
  
  
  has_many :roles, :through => :assignments
  has_many :assignments
  
  def fullname
    self.first_name + " " + self.last_name + " " + self.last_name2
  end
end
