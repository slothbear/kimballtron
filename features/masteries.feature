Feature: Crop mastery tracking
  In order to track my crop masteries
  I want to see each crop's star level and additional harvests
  So that I can plan my plantings and know how long until complete mastery

@focus
  Scenario: New farmer gets a farm with crop mastery data 
    Given I have a farmer "arnold@hooterville.net" with password "Cynthia"
    And I am not signed in
    When I sign in as farmer "arnold@hooterville.net" with password "Cynthia"
    Then I should see "your farm"
    And I see a list of all crops
    And each crop shows my stars and additional harvests