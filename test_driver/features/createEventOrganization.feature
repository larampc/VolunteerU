Feature: Create Event as an organization
  As an organization I want to be able to create events so that their information can be easily spread.

Scenario:
  Given I am logged in
  And I am on the "homePage"
  When I click on the "newEvent" button
  Then I am on the "createActionPage"