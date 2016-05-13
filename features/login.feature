Feature: Wikipedia login logout functionality
  @high_priority
  Scenario: As a Wikipedia user I should be able to login with my credentials
    Given I tap on skip button on welcome screen
    Then I land on a Home screen
    When I tap on Settings button
    And I land on a Settings screen
    When I tap on Login button on Settings screen
    Then I land on a Login screen
    And I type "Aleksskela" to username field
    Then I type "root1234" to password field
    When I tap on Login button on Login screen
    And I should be signed in as user "Aleksskela"

  Scenario Outline: As a Wikipedia user I should be able to login with my credentials
    Given I tap on skip button on welcome screen
    Then I land on a Home screen
    When I tap on Settings button
    And I land on a Settings screen
    When I tap on Login button on Settings screen
    Then I land on a Login screen
    And I type "<login>" to username field
    Then I type "<password>" to password field
    When I tap on Login button on Login screen
    And I should be signed in as user "<login>"

  Examples:
    | login      | password |
    | aleksskela | root1234 |
    | admin      | admin    |
    | igor       | igor     |









