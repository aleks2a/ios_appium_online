Feature: Wikipedia search
  @new_search
  Scenario: User able to search in Wikipedia app
    Given I land on Welcome screen
    Then I press on Get Started button on Welcome screen
    And I press on Continue button
    And I press on Continue button
    Then I land on a Home screen
    And I press on Search icon on home screen
    Then I land on a Search screen
    And I type "BART" in search field
    Then I should see "Bay Area Rapid Transit" as 1st result

  Scenario: Verify number of search results
    Given I land on Welcome screen
    Then I press on Get Started button on Welcome screen
    And I press on Continue button
    And I press on Continue button
    Then I land on a Home screen
    And I press on Search icon on home screen
    Then I land on a Search screen
    And I type "BART" in search field
    Then I should see at least 10 results on search result screen
    And I tap on 1st result
    And I verify that article title includes "Bay Area Rapid Transit"

  @wip
  Scenario: Recent history
    Given I land on Welcome screen
    Then I press on Get Started button on Welcome screen
    And I press on Continue button
    And I press on Continue button
    Then I land on a Home screen
    And I press on Search icon on home screen
    Then I land on a Search screen
    And I type "BART" in search field
    Then I should see at least 10 results on search result screen
    And I tap on 1st result
    Then I tap on "Explore" button
    And I tap on "History" button
    Then I can see "Bay Area Rapid Transit" in recent history



