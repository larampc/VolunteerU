Feature: Open Event Details
    As a FEUP student I want to check details of an event to know if I'm interested and available.

Scenario:
    Given I am on the "MainPage"
    And exists an event called "Event1"
    When I tap the "eventCard" of the event "Event1"
    Then I am on the "DetailsEventPage"
    And I expect the text "Event1" to be present