class Farmer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_one :farm
  after_create :ensure_has_farm

  def ensure_has_farm
    # TODO: [nilfarm] this is also done in farmers_controller
    if self.farm.nil?
      self.farm = Farm.create(:name => Farm.new_farm_name)
    end
  end

end
