Feature: Registration
 #always change the email, otherwise it will fail, because it was already registered
@skip
Scenario: Registration-Sign-in
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a valid email on register form "natantesting2@test.com"
    And a valid password "testingQA.2024"
    When I click on Register button
    Then The message "Hello" should be visible

@skip
Scenario: Registration with invalid Email-id
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a invalid email on register form "natantesting3@test"
    And a valid password "testingQA.2024"
    When I click on Register button
    Then an error message should be visible and containing the words "valid" and "email"

Scenario: Registration with empty Email-id
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I leave email empty on register form
    And a valid password "testingQA.2024"
    When I click on Register button
    Then an error message should be visible and containing the words "valid" and "email"

Scenario: Registration with empty password
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a valid email on register form "natantesting3@test.com"
    And leave password empty on register form
    When I click on Register button
    Then an error message should be visible and containing the words "enter" and "password"

Scenario: Registration with empty Email-id & password
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I leave email empty on register form
    And leave password empty on register form
    When I click on Register button
    Then an error message should be visible and containing the words "valid" and "email"