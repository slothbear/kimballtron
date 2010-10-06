crop_data = YAML::load_file("#{Rails.root}/db/crops.yaml")

crop_data.each do |name, attrs|
  crop = Crop.find_or_create_by_name(name)
  crop.update_attributes(attrs)
end