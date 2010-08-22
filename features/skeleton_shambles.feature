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
    Given the following crops exist: Blackberries, White Grapes
    When I am on the crops page
    Then I should see White Grapes on one line and Blackberries on the next
