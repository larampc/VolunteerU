Feature: Create Student Account
    As a coordinator of a Volunteering Organization, I want to be recognized as such, so that users can trust my events.

Scenario:
    Given I am on the "CreateAccountPage"
    And I tap the "registerOrganization" button
    When I fill the "orgName" field with "My Organization Name"
    And I fill the "phoneOrg" field with "123456789"
    And I fill the "linkOrg" field with "https://myorganization.com"
    And I fill the "emailRegister" field with "myorganization@gmail.com"
    And I fill the "passwordRegister" field with "myorganization"
    And I fill the "passwordConfirm" field with "myorganization"
    And I tap the "CreateAccount" button
    Then I am on the "MainPage"