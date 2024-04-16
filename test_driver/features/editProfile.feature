Feature: edit profile
  As a user I want to be able to edit my profile information so that it's always up to date.

  Background:
    Given I am logged in
    And I am on the "editProfilePage"

  Scenario:
    Given I have the text "First Name" present
    When I fill the "editFirstName" field with "FirstNameTest"
    And I tap the "edit profile save changes" button
    Then I expect the text "FirstNameTest" to be present

  Scenario:
    Given I have the text "Last Name" present
    When I fill the "editLastName" field with "LastNameTest"
    And I tap the "edit profile save changes" button
    Then I expect the text "LastNameTest" to be present

  Scenario:
    Given I have the text "Course" present
    When I fill the "editCourse" field with "CourseTest"
    And I tap the "edit profile save changes" button
    Then I expect the text "CourseTest" to be present

  Scenario:
    Given I have the text "Birthday" present
    When I fill the "editBirthday" field with "2004"
    And I tap the "edit profile save changes" button
    Then I expect the text "2004" to be present

  Scenario:
    Given I have the text "Link" present
    When I fill the "editOrgName" field with "OrgNameTest"
    And I tap the "edit profile save changes" button
    Then I expect the text "OrgNameTest" to be present

  Scenario:
    Given I have the text "Link" present
    When I fill the "editOrgLink" field with "OrgLinkTest.com"
    And I tap the "edit profile save changes" button
    Then I expect the text "OrgLinkTest.com" to be present