Feature: Login Page

Background:
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page

Scenario: Log-in with valid username and password.
    When I enter a the valid username "testingpracticenatan"
    And the valid password "Qatesting.12345"
    And click on the login button
    Then The message "Hello testingpracticenatan" should be visible

Scenario: Log-in with incorrect username and incorrect password.
    When I enter a the valid username "testingpracticenatan"
    And the invalid password "wrongpassword"
    And click on the login button
    Then an error message should be visible and containing the words "password" and "incorrect"

Scenario: Log-in with correct username and empty password.
    When I enter a the valid username "testingpracticenatan"
    And leave password empty
    And click on the login button
    Then an error message should be visible and containing the words "password" and "required"

Scenario: Log-in with empty username and valid password.
    When I leave the username empty
    And the valid password "Qatesting.12345"
    And click on the login button
    Then an error message should be visible and containing the words "username" and "required"

Scenario: Log-in with empty username and empty password.
    When I leave the username empty
    And leave password empty
    And click on the login button
    Then an error message should be visible and containing the words "username" and "required"

Scenario: Log-in -Password should be masked
    When I type the valid password "Qatesting.12345"
    Then the password should be masked
#login accpets sensitive changed username, when it should not

Scenario: Login-Handles case sensitive -username
    When I enter a the valid username with case changed "TESTINGPRACTICENATAN"
    And the valid password "Qatesting.12345"
    And click on the login button
    Then an error message should be visible and containing the words "username" and "incorrect"

Scenario: Login-Handles case sensitive -password
    When I enter a the valid username with case changed "testingpracticenatan"
    And the valid password "QATESTING.12345"
    And click on the login button
    Then an error message should be visible and containing the words "password" and "incorrect"

Scenario: Login-Authentication
    When I enter a the valid username "testingpracticenatan"
    And the valid password "Qatesting.12345"
    And click on the login button
    Then The message "Hello testingpracticenatan" should be visible
    When I click on "Sign out"
    Then I should be redirected to the login Page
    When I press back button 
    Then "Hello testingpracticenatan" should not be visible