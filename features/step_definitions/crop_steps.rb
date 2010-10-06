Given /^the following crops? exists?: (.+)$/ do | crops |
  crops.split(', ').each do | crop_name |
    raise "can't find crop: #{crop_name}" unless Crop.find_by_name(crop_name)
  end
end

Then /^I should see White Grapes on one line and Black Berries on the next$/ do
  regexp = /White Grapes.*\n.*Black Berries/m
  page.should have_xpath('//*', :text => regexp)
end
