Feature: Wikipedia login logout functionality

  Scenario: As a Wikipedia user I should be able to login with my credentials
    Given I land on Welcome screen
    Then I press on Get Started button on Welcome screen
    And I press on Continue button
    And I press on Continue button
    Then I land on a Home screen
    When I tap on Settings button
    And I land on a Settings screen
    When I tap on Login button on Settings screen
    Then I land on a Login screen
    And I type "Aleksskela" to username field
    Then I type "root1234" to password field
    When I tap on Login button on Login screen
    And I should be signed in as user "Aleksskela"

  @gestures
  Scenario: As a Wikipedia user I should be able to login with my credentials
    Given I land on Welcome screen
    Then I press on Get Started button on Welcome screen
    And I press on Continue button
    And I press on Continue button
    Then I land on a Home screen
    When I tap on Settings button
    And I land on a Settings screen
    Then I scroll until I see "Developer settings"

