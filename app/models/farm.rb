class Farm < ActiveRecord::Base
  belongs_to :farmer
  has_many :masteries
  after_initialize :set_defaults

  def set_defaults
    return unless new_record?
    self.plots ||= 0
    self.harvests_per_day ||= 0
    # count==0 is probably redundant with new_record?  #TODO: test
    self.masteries = Mastery.one_for_each_crop if self.masteries.count == 0
  end

  private
  def self.new_farm_name
    keywords = YAML::load_file(Rails.root.join('config', 'farm_names.yml'))
    farm_types = keywords["farm_types"]
    level_names = keywords["level_names"]

    prefix = level_names[rand(level_names.size)]
    suffix = farm_types[rand(farm_types.size)]
    prefix + " " + suffix
  end
end
