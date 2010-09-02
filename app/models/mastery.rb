class Mastery < ActiveRecord::Base
  belongs_to :crop
  belongs_to :farm
  after_initialize :set_defaults

  def set_defaults
    return unless new_record?
    self.stars ||= 0
    self.additional_harvests ||= 0
  end

  def Mastery.one_for_each_crop
    Crop.order(:market_order).collect { |crop| Mastery.new(:crop => crop) }
  end

end