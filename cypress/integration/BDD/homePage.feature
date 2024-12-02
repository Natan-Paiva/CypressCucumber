Feature: Home Page

@skip
Scenario: Home Page with three Sliders only
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    And click on Home logo
    Then the home page must contains only three Sliders

@skip
Scenario: Home Page with three Arrivals only
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    And click on Home logo
    Then the home page must contains only three arrivals

@skip
Scenario: Home page - Images in Arrivals should navigate
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    And click on Home logo
    Then the home page must contains only three arrivals
    When I click in the image of a product
    Then I should be sent to the product page that should contain a button add to basket

@skip
Scenario: Home page - Arrivals-Images-Description
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    And click on Home logo
    Then the home page must contains only three arrivals
    When I click in the image of a product
    Then I should be sent to the product page that should contain a button add to basket
    When I click on the desciption tab
    Then the product desciption should be visible

@skip
Scenario: Home page - Arrivals-Images-Reviews
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    And click on Home logo
    Then the home page must contains only three arrivals
    When I click in the image of a product
    Then I should be sent to the product page that should contain a button add to basket
    When I click on the reviews tab
    Then the product reviews should be visible

@skip
Scenario: Home page - Arrivals-Images-Add to Basket
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    And click on Home logo
    Then the home page must contains only three arrivals
    When I click in the image of a product
    Then I should be sent to the product page that should contain a button add to basket
    When I click on add to basket button
    Then on the menu bar shoul show that 1 product is added and the amount

@skip
Scenario: Home-Arrivals-Add to Basket-Items
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    And click on Home logo
    Then the home page must contains only three arrivals
    When I click in the image of a product
    Then I should be sent to the product page that should contain a button add to basket
    When I click on add to basket button
    Then on the menu bar shoul show that 1 product is added and the amount
    When I click on the cart menu
    Then I should be sent to the checkout page

@skip
Scenario: Home-Arrivals-Add to Basket-Items-Coupon
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    And click on Home logo
    Then the home page must contains only three arrivals
    When I click in the image of a product
    Then I should be sent to the product page that should contain a button add to basket
    When I click on add to basket button
    Then on the menu bar shoul show that 1 product is added and the amount
    When I click on the cart menu
    Then I should be sent to the checkout page
    When I entre the coupon "krishnasakinala"
    Then I should get 50rps off on the total

@skip
Scenario: Home-Arrivals-Add to Basket-Items-Coupon value<450
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    And click on Home logo
    Then the home page must contains only three arrivals
    When I click in the image of the last
    Then I should be sent to the product page that should contain a button add to basket
    When I click on add to basket button
    Then on the menu bar shoul show that 1 product is added and the amount
    When I click on the cart menu
    Then I should be sent to the checkout page
    When I entre the coupon "krishnasakinala"
    Then a message "The minimum spend for this coupon is ₹450.00." should appear

@skip
Scenario: Home-Arrivals-Add to Basket-Items-Remove book
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    And click on Home logo
    Then the home page must contains only three arrivals
    When I click in the image of a product
    Then I should be sent to the product page that should contain a button add to basket
    When I click on add to basket button
    Then on the menu bar shoul show that 1 product is added and the amount
    When I click on the cart menu
    Then I should be sent to the checkout page
    When I remove a product
    Then the basket should be empty

@skip
Scenario: Home-Arrivals-Add to Basket-Items-Add book
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    And click on Home logo
    Then the home page must contains only three arrivals
    When I click in the image of a product
    Then I should be sent to the product page that should contain a button add to basket
    When I click on add to basket button
    Then on the menu bar shoul show that 1 product is added and the amount
    When I click on the cart menu
    Then I should be sent to the checkout page
    When I change the quantity to "2"
    Then The update basket button should be clickable
    When I click on the update basket button the subtotal should be doubled

@skip
Scenario: Home-Arrivals-Add to Basket-Items-Check-out-Total & Sub-total condition
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    And click on Home logo
    Then the home page must contains only three arrivals
    When I click in the image of a product
    Then I should be sent to the product page that should contain a button add to basket
    When I click on add to basket button
    Then on the menu bar shoul show that 1 product is added and the amount
    When I click on the cart menu
    Then I should be sent to the checkout page
    And the total and subtotal should be visible
    And the total should be less than subtotal

@skip
Scenario: Home-Arrivals-Add to Basket-Items-Check-out functionality
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    And click on Home logo
    Then the home page must contains only three arrivals
    When I click in the image of a product
    Then I should be sent to the product page that should contain a button add to basket
    When I click on add to basket button
    Then on the menu bar shoul show that 1 product is added and the amount
    When I click on the cart menu
    Then I should be sent to the checkout page
    And the total and subtotal should be visible
    And the total should be less than subtotal
    When I click on Proceed to Checkout button
    Then I should be sent to Payment Gateway page

@skip
Scenario: Home-Arrivals-Add to Basket-Items-Check-out-Payment Gateway
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    And click on Home logo
    Then the home page must contains only three arrivals
    When I click in the image of a product
    Then I should be sent to the product page that should contain a button add to basket
    When I click on add to basket button
    Then on the menu bar shoul show that 1 product is added and the amount
    When I click on the cart menu
    Then I should be sent to the checkout page
    And the total and subtotal should be visible
    And the total should be less than subtotal
    When I click on Proceed to Checkout button
    Then I should be sent to Payment Gateway page
    And "Billing Details", "Your order", "Additional Information" and Payment gateway details should be visible


Scenario: Home-Arrivals-Add to Basket-Items-Check-out-Payment Gateway
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    And click on Home logo
    Then the home page must contains only three arrivals
    When I click in the image of a product
    Then I should be sent to the product page that should contain a button add to basket
    When I click on add to basket button
    Then on the menu bar shoul show that 1 product is added and the amount
    When I click on the cart menu
    Then I should be sent to the checkout page
    And the total and subtotal should be visible
    And the total should be less than subtotal
    When I click on Proceed to Checkout button
    Then I should be sent to Payment Gateway page
    And "Billing Details", "Your order", "Additional Information" and Payment gateway details should be visible
    When I enter first name "Test"
    And last name "Testing"
    And email "test@test.com"
    And phone "1234567890"
    And select "Brazil" as country
    And type the adress "test street, 123"
    And city "Canoas"
    And state "rio"
    And postcode "92030010"
    And click on Place order button
    Then I should be sent to Order confirmation page