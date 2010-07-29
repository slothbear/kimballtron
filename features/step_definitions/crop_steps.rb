Given /^the crop sample data has been loaded$/ do
  crop = Crop.find(:first)
  raise "Can't find any sample crop data." unless crop
end

