
Feature: Cancel Registration on Event
    As a user I want to be able to cancel my registration on an event.

Scenario:
    Given I am on the "DetailsEventPage"
    And the text "Cancel registration" is present
    When I tap the "eventRegister_cancel" button
    Then I expect the text "Register on activity" to be present