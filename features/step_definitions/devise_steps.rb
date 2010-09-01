Given /^I am not signed in$/ do
  visit('/farmers/sign_out')
end

Given /^I have a farmer "([^\"]*)" with password "([^\"]*)"$/ do |email, password|
  Farmer.new(:email => email,
           :password => password,
           :password_confirmation => password).save!
end

When /^I sign in as farmer "([^\"]*)" with password "([^\"]*)"$/ do |email, password|
  Given %{I go to the home page}
  And %{I follow "sign in"}
  And %{I fill in "farmer_email" with "#{email}"}
  And %{I fill in "farmer_password" with "#{password}"}
  And %{I press "Sign in"}
end