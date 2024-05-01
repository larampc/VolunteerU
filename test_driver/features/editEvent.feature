Feature: Edit Event
 As a FEUP student I want to check details of an event to know if I'm interested and available.

Scenario:
    Given I am logged in
    And I am on the "MyEventsPage"
    When I tap an "eventCard"
    And I tap the "edit" button
    Then I am on the "EditActionPage"

