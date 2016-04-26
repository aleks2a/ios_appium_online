@search
Feature: Wikipedia Search

  Scenario: As Wikipedia User, I would like to perform search
    Given I tap on skip button on welcome screen
    Then I land on a Home screen
    When I tap on Search button
    And I land on a Search screen
    And I type San Francisco in search field
    Then I see 1st result includes San Francisco


  Scenario: As Wikipedia User, I would like to perform search
    Given I tap on skip button on welcome screen
    Then I land on a Home screen
    When I tap on Search button
    And I land on a Search screen
    And I type "Denver" in search field
    And I type "New York" in search field
    And I type "Test automation" in search field



