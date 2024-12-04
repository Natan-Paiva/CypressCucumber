Feature: My Account

@skip
Scenario: My Accounts-Dashboard
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a the valid username "testingpracticenatan"
    And the valid password "Qatesting.12345"
    And click on the login button
    Then The message "Hello testingpracticenatan" should be visible
    And "Dashboard" shoulde be visible

@skip
Scenario: My Accounts-Orders
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a the valid username "testingpracticenatan"
    And the valid password "Qatesting.12345"
    And click on the login button
    Then The message "Hello testingpracticenatan" should be visible
    When I click on "Orders" on the dashboard Menu
    Then I should be redirected to "orders" Page

@skip
Scenario: My Accounts-Orders - View details
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a the valid username "testingpracticenatan"
    And the valid password "Qatesting.12345"
    And click on the login button
    Then The message "Hello testingpracticenatan" should be visible
    When I click on "Orders" on the dashboard Menu
    Then I should be redirected to "orders" Page
    When I click on view button
    Then Order Number, Ordered date and Status of the order should be visible

@skip
Scenario: My Accounts-Address Functionality
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a the valid username "testingpracticenatan"
    And the valid password "Qatesting.12345"
    And click on the login button
    Then The message "Hello testingpracticenatan" should be visible
    When I click on "Addresses" on the dashboard Menu
    Then I should be redirected to "address" Page
    And "Billing Address" and "Shipping Address" should be visible

@skip
Scenario: My Accounts-Address Functionality - Edit
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a the valid username "testingpracticenatan"
    And the valid password "Qatesting.12345"
    And click on the login button
    Then The message "Hello testingpracticenatan" should be visible
    When I click on "Addresses" on the dashboard Menu
    Then I should be redirected to "address" Page
    When I click on edit on "Shipping Address"
    Then I should be able to edit the address

@skip
Scenario: My Accounts-Account Details
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a the valid username "testingpracticenatan"
    And the valid password "Qatesting.12345"
    And click on the login button
    Then The message "Hello testingpracticenatan" should be visible
    When I click on "Account Details" on the dashboard Menu
    Then I should be redirected to "edit-account" Page
    And new password should be visible

Scenario: My Accounts-Log-Out
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a the valid username "testingpracticenatan"
    And the valid password "Qatesting.12345"
    And click on the login button
    Then The message "Hello testingpracticenatan" should be visible
    When I click on "Logout" on the dashboard Menu
    Then I should be redirected to the login Page