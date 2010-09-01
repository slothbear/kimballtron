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


Then /^each crop shows my stars and additional harvests$/ do
  # not practical to check for all of them, but we'll check for
  # newest
  page.should have_xpath('//*', :text => /Spinach.+\d+.+\d+/)
  # changed (wheat, ?)
  page.should have_xpath('//*', :text => /Junk/)
  # random
  page.should have_xpath('//*', :text => /Random/)
end

