
Feature: Participate on Event
    As a FEUP student I want to participate in volunteering events so that I...
        develop soft skills.
        Meet new people.
        Help improve the world.

Scenario:
    Given I am on the "DetailsEventPage"
    And the text "Register on activity" is present
    When I tap the "eventRegister_cancel" button
    Then I expect the text "Cancel registration" to be present