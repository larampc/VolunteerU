Feature: Create Event
  As a user I want to be able to create events so that I'm not dependent of any organization.

Scenario:
  Given I am logged in
  And I am on the "createActionPage"
  And I fill all fields
  When I tap the "createAction" button
  Then My event will appear on the "MainPage"