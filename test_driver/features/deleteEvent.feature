Feature: Delete events 
	As an event creator, I want to be able to delete events created by me.

Scenario:
  Given I am logged in
  And I am on the "EditAction" page
  When I tap the "Delete Event" button
  Then I expect the text "Confirm deletion" to be present
  And I tap the "Confirm" button
  And I go to "MainPage" page
  Then I expect not to see the event I deleted
  
