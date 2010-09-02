class Farm < ActiveRecord::Base
  belongs_to :farmer
  has_many :masteries
  after_initialize :set_defaults

  def set_defaults
   self.plots ||= 350
   self.harvests_per_day ||= 2
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
