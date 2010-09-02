Then /^I see a list of all crops$/ do
  # not practical to check for all of them, but we'll check for
  # first
  page.should have_content("Strawberries")
  # last
  page.should have_content("Forget-Me-Not")
  # newest
  page.should have_content("Spinach")
  page.should have_content("Carnival Squash")
end


Then /^each crop shows stars and additional harvests$/ do
  # not practical to check for all of them, but we'll check for
  # newest
  page.should have_xpath('//*', :text => /Spinach\s+0\s+0/)
  # changed requirements (wheat).  Eh, this choice makes no sense.
  page.should have_xpath('//*', :text => /Wheat\s+0\s+0/)
  # random
  page.should have_xpath('//*', :text => /Rice\s+0\s+0/)
end

