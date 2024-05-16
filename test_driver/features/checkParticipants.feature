Feature: Check signed up members for an activity
	As an event creator, I need to know who signed up to the event so that I can plan my event successfully.

Scenario:
  Given I am logged in
  And I am on the "MyEventsPage"
  And I have created an event with participants
  When I tap the widget "CreatedByMe"
  And I tap the widget of type "Card" 
  And I tap the widget with the text "Check participants" 
  Then I expect the text "Total of participants" to be present
  And I expect "participantCard" to be present