Feature: Filter Events
    As a user I want to filter the initiatives so that it is faster to find the ones that interest me.

Scenario: Filter Campaigns
    Given I go to the "MainPage"
    When I tap on the "ChoiceChips" button
    And select "Nature" category
    Then I expect to see all event of category "Nature"

