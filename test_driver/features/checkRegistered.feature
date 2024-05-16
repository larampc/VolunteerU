Feature: Check the events I registered for
  As a user I want to be able to check the future initiatives that I have registered for.

Scenario:
  Given I am logged in
  When I am on the "MyEvents"
  And I tap the widget of type "Card" 
  Then I expect the text "Cancel Registration" to be present