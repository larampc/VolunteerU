Feature: Hide past events
  As a user I only want to view future events.

Scenario:
    Given I am logged in
    And I am on the "MainPage"
    When I tap an "eventCard"
    Then the value of "eventDate" will be superior to "currentTime"
