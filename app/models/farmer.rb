class Farmer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :farms

  after_save :ensure_has_farm

  def ensure_has_farm
    puts "((farms count: #{self.email}  #{self.farms.count}))"
  end
end
