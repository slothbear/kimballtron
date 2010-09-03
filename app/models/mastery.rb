class Mastery < ActiveRecord::Base
  belongs_to :crop
  belongs_to :farm
  after_initialize :set_defaults

  validates_numericality_of :stars,
    :greater_than_or_equal_to => 0,
    :less_than_or_equal_to => 3,
    :only_integer => true
    #TODO: how come this doesn't work?
    #    :inclusion => { :in => [0, 1, 2, 3  ] }
    #    :inclusion => { :in => %w{0 1 2 3} }

  validates_numericality_of :additional_harvests,
      :greater_than_or_equal_to => 0,
      :only_integer => true

  def set_defaults
    return unless new_record?
    self.stars ||= 0
    self.additional_harvests ||= 0
  end

  def Mastery.one_for_each_crop
    Crop.order(:market_order).collect { |crop| Mastery.new(:crop => crop) }
  end

end