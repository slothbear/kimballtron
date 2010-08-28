Given /^I am not authenticated$/ do
  visit('/users/sign_out')
end

Given /^I have a farmer "([^\"]*)" with password "([^\"]*)"$/ do |email, password|
  Farmer.new(:email => email,
           :password => password,
           :password_confirmation => password).save!
end

Given /^I am a new, authenticated user$/ do
  email = 'lisa@farmerotto.com'
  password = 'hooterville'

  Given %{I have a farmer "#{email}" with password "#{password}"}
  And %{I am on the home page}
  And %{I follow "sign up"}
  And %{I fill in "farmer_email" with "#{email}"}
  And %{I fill in "farmer_password" with "#{password}"}
  And %{I press "Sign up"}
end