Feature: Room Display
  
  Scenario: Homepage landing
    Given I visit the homepage
    Then I should see Home page display
    Then I should see New Room Button
    When I click on New Room Button
    Then I should be redirected to New Room Form

  # Scenario: Room Navigation
  #   Given I visit the homepage
  #   When I click on a room
  #   Then I should be redirected to that particular room

  # Scenario: Room Display
  #   Given I visit the particular room
  #   Then I should see room's title
  #   Then I should see room's description
    