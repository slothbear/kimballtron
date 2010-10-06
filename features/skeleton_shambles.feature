Feature: make sure skeleton can shamble
  In order to test Kimballtron from end to end
  I want to press the big TEST button
  So that I can view crop info in the same order as the Market.
  
  Scenario: Verify level 70 required to plant clover
    Given the following crop exists: Clover
    When I am on the crops page
    Then I should see "Clover"
    And I should see "70"

  Scenario: Verify two crops appear in market order on consecutive lines
    Given the following crops exist: Black Berries, White Grapes
    When I am on the crops page
    Then I should see White Grapes on one line and Black Berries on the next

  Scenario: Crop mastery levels and time-to-harvest are present
    Given the following crop exists: Clover
    When I am on the crop page for Clover
    Then I should see "Clover"
    And I should see "hours to harvest"
    And I should see "4"
    And I should see "2500"
    And I should see "5000"
    And I should see "7500"
