Feature: Wikipedia settings screen functionality

  @settings
  Scenario: As a Wikipedia User I can turn of lanquages
    Given I land on Welcome screen
    Then I press on Get Started button on Welcome screen
    And I press on Continue button
    And I press on Continue button
    Then I land on a Home screen
    When I tap on Settings button
    And I land on a Settings screen
    Then I press on Show lanquages on search toggle
    And I verify that Show lanquages on search toggle is on
    Then I press on Show lanquages on search toggle
    And I verify that Show lanquages on search toggle is off

 #TODO goto search screen
    Then I should not see Lanquages on search screen


