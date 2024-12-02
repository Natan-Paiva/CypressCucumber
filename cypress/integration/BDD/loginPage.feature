Feature: Login Page

@skip
Scenario: Log-in with valid username and password.
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a the valid username "testingpracticenatan"
    And the valid password "Qatesting.12345"
    And click on the login button
    Then The message "Hello testingpracticenatan" should be visible

@skip
Scenario: Log-in with incorrect username and incorrect password.
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a the valid username "testingpracticenatan"
    And the invalid password "wrongpassword"
    And click on the login button
    Then an error message should be visible and containing the words "password" and "incorrect"

@skip
Scenario: Log-in with correct username and empty password.
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a the valid username "testingpracticenatan"
    And leave password empty
    And click on the login button
    Then an error message should be visible and containing the words "password" and "required"

@skip
Scenario: Log-in with empty username and valid password.
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I leave the username empty
    And the valid password "Qatesting.12345"
    And click on the login button
    Then an error message should be visible and containing the words "username" and "required"

@skip
Scenario: Log-in with empty username and empty password.
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I leave the username empty
    And leave password empty
    And click on the login button
    Then an error message should be visible and containing the words "username" and "required"

@skip
Scenario: Log-in -Password should be masked
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I type the valid password "Qatesting.12345"
    Then the password should be masked

@skip
Scenario: Login-Handles case sensitive -username
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a the valid username with case changed "TESTINGPRACTICENATAN"
    And the valid password "Qatesting.12345"
    And click on the login button
    Then an error message should be visible and containing the words "username" and "incorrect"

@skip
Scenario: Login-Handles case sensitive -password
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a the valid username with case changed "testingpracticenatan"
    And the valid password "QATESTING.12345"
    And click on the login button
    Then an error message should be visible and containing the words "password" and "incorrect"

Scenario: Login-Authentication
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a the valid username "testingpracticenatan"
    And the valid password "Qatesting.12345"
    And click on the login button
    Then The message "Hello testingpracticenatan" should be visible
    When I click on "Sign out"
    Then I should be redirected to the login Page
    When I press back button 
    Then "Hello testingpracticenatan" should not be visible