Feature: Create Event
  As a user I want to be able to create events so that I'm not dependent of any organization.

Scenario:
  Given I am logged in
  And I am on the "createActionPage"
  And I fill the "actionName" field with "Action"
  And I fill the "actionDescription" field with "Description"
  And I select the location "FEUP" in "actionLocation"
  And I select the category "Animals" in "actionCategory"
  And I select date in "actionDate"
  And I fill the "actionDuration" field with "1h"
  And I upload a image
  When I tap the "createAction" button
  Then I expect the text "Action" to be present