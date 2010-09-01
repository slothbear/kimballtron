Feature: New farmer is presented with a standard issue farm
  In order to get a new farmer started
  I want a new farmer to automatically be assigned a farm
  So that I can immediately start working with my farm data

  Scenario: New farmer gets a new farm
    Given I am not signed in
    And I am on the home page
    And I follow "sign up"
    And I fill in "farmer_email" with "lisa@hooterville.net"
    And I fill in "farmer_password" with "myoliver"
    And I fill in "farmer_password_confirmation" with "myoliver"
    And I press "Sign up"
    Then I should see "Welcome to your farm"
    And I should see "plots: 350"
    And I should see "harvests per day: 2"


