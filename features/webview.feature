Feature: Privacy policy

  @webview
  Scenario: As a Wikipedia User I can view Privacy policy
    Given I land on Welcome screen
    Then I press on Get Started button on Welcome screen
    And I press on Continue button
    And I press on Continue button
    Then I land on a Home screen
    When I tap on Settings button
    And I land on a Settings screen
    Then I tap on Privacy policy
    And I land on Privacy policy web page