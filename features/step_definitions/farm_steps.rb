When /^I view my farm page$/ do
  page.should have_content("your farm")
  # TODO: is there a way to determine if it is the correct farm page?
  # need farmer_farm_path or something like that.
end
