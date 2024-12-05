Feature: My Account

Background:
    Given I open the browser and enter the URL "http://practice.automationtesting.in/"
    When I click on the My Account Menu
    Then I should be redirected to the My Account Page
    When I enter a the valid username "testingpracticenatan"
    And the valid password "Qatesting.12345"
    And click on the login button
    Then The message "Hello testingpracticenatan" should be visible

Scenario: My Accounts-Dashboard
    And "Dashboard" shoulde be visible

Scenario: My Accounts-Orders
    When I click on "Orders" on the dashboard Menu
    Then I should be redirected to "orders" Page

Scenario: My Accounts-Orders - View details
    When I click on "Orders" on the dashboard Menu
    Then I should be redirected to "orders" Page
    When I click on view button
    Then Order Number, Ordered date and Status of the order should be visible

Scenario: My Accounts-Address Functionality
    When I click on "Addresses" on the dashboard Menu
    Then I should be redirected to "address" Page
    And "Billing Address" and "Shipping Address" should be visible

Scenario: My Accounts-Address Functionality - Edit
    When I click on "Addresses" on the dashboard Menu
    Then I should be redirected to "address" Page
    When I click on edit on "Shipping Address"
    Then I should be able to edit the address

Scenario: My Accounts-Account Details
    When I click on "Account Details" on the dashboard Menu
    Then I should be redirected to "edit-account" Page
    And new password should be visible

Scenario: My Accounts-Log-Out
    When I click on "Logout" on the dashboard Menu
    Then I should be redirected to the login Page