Feature: Search
	As a user I want to be able to search for events so that I can find specific events on the app

Scenario:
    Given I am on the "MainPage"
    And I fill the "searchBar" field with "Test"
    Then I expect to see events whose title contain the substring "Test"