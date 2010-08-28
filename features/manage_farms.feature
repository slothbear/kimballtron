Feature: Each farmer gets one farm by default
  In order to provide default behavior for most farmers
  I want each new farmer to automatically be assigned a farm
  So that I can immediately start working with my farm data

@focus
  Scenario: New farmer gets a new farm
    Given I am a new, authenticated user
    When I am on the home page
    Then I should see "farm"
    And I should see "0 plots"
    And I should see "0 harvests per day"


