class Crop < ActiveRecord::Base
  default_scope :order => 'market_order ASC'
end
