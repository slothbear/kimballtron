class Mastery < ActiveRecord::Base
  belongs_to :crop
  belongs_to :farm
  after_initialize :set_defaults

  def set_defaults
   self.stars ||= 0
   self.additional_harvests ||= 0
  end
  
end