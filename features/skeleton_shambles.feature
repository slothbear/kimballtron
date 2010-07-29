Feature: make sure skeleton can shamble
  In order to test Kimballtron from end to end
  Everyone
  wants to press the green deploy button and see crop info on the home page.
  
  Scenario: Verify level 70 required to plant clover
    Given the crop sample data has been loaded
    When I am on the crops page
    Then I should see "Clover"
    And I should see "70"
