Feature: Check the events I have created
  As an event creator I want to track the initiatives I have created that didn't happen yet.


Scenario:
  Given I am logged in
  When I am on the "MyEvents"
  And I tap the widget "CreatedByMe"
  And I tap the widget of type "Card" 
  Then I expect the text "Check participants" to be present