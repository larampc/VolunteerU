Feature: Forgot Password
    As a user I am required to have an account so that...
        volunteering coordinators know who I am when I subscribe an initiative.
        other users know who I am when I create a volunteering initiative.

Scenario:
    Given I am on the "CreateAccountPage"
    When I fill the "firstNameStudent" field with "First"
    And I fill the "lastNameStudent" field with "Last"
    And I fill the "phoneStudent" field with "123456789"
    And I fill the "birthdayStudent" field with "2000"
    And I fill the "courseStudent" field with "My Course"
    And I fill the "emailRegister" field with "FirstLast@gmail.com"
    And I fill the "passwordRegister" field with "FirstLast"
    And I fill the "passwordConfirm" field with "FirstLast"
    And I tap the "CreateAccount" button
    Then I am on the "MainPage"