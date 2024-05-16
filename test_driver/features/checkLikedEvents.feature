Feature: Check liked events
    As a user I want to be able to see the events I liked.

Scenario:
    Given I am logged in
    And I am on the "MainPage"
    When I tap the "liked" button
    Then I will see the events I liked
    And I expect "eventCard" to be present
