Feature: Login
    As a registered user I am required to login so that I can access my personal account.

Scenario:
    Given I am on the LoginPage
    When I fill the "login email" field with "test2@gmail.com"
    And I fill the "login password" field with "test22"
    Then I tap the "login sign in button" button
    Then I am on the "MainPage"