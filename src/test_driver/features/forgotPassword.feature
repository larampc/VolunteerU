
Feature: Forgot Password
    As a registered user if I forget my password I want to be able to set a new one.

Scenario:
    Given I am on the "LoginPage"
    And I tap the "forgotButton" button
    Then I expect the text "Reset Password" to be present

