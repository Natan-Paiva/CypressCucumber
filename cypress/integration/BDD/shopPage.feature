Feature: Shop

@skip
Scenario: Shop-Filter By Price Functionality
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    Then I should be redirected to the shop page
    When I set the price range between 150 to 450 rps
    And click on filter button
    Then all book should be between the range 150 to 450

@skip
Scenario: Shop-Product Categories Functionality
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    Then I should be redirected to the shop page
    When I click on the "HTML" product categorie
    Then only products of "HTML" should be visible

#it was not possible to test sorting by popularity nor avarege rating, because the site does not provide such information
@skip
Scenario: Shop-Default Sorting Functionality - Newest
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    Then I should be redirected to the shop page
    When I sort by "Sort by newness" in default sorting dropdown
    Then the products should be ordered by newness 

@skip
Scenario: Shop-Default Sorting Functionality - low to high
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    Then I should be redirected to the shop page
    When I sort by "Sort by price: low to high" in default sorting dropdown
    Then the products should be ordered by price low to high 

@skip
Scenario: Shop-Default Sorting Functionality - high to low
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    Then I should be redirected to the shop page
    When I sort by "Sort by price: high to low" in default sorting dropdown
    Then the products should be ordered by price high to low

#  Shop-Read More Functionality scenario cannot be tested, as read more functionality was not found
@skip
Scenario: Shop-Sale Functionality
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    Then I should be redirected to the shop page
    When I click on a product with sale tag
    Then I should be redirected to the product page 
    And the actual price and the old price striken should be visible

#Shop-Add to Basket-View Basket Functionality - view basket button not found in shop page, only in product page
@skip
Scenario: Shop-Add to Basket-View Basket Functionality  Item link
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    Then I should be redirected to the shop page
    When I click on add to basket on the first product
    Then on the menu bar shoul show that 1 product is added and the amount is not 0
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

@skip
Scenario: Shop-Add to Basket-View Basket-Tax Functionality India
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    Then I should be redirected to the shop page
    When I click on add to basket on the first product
    Then on the menu bar shoul show that 1 product is added and the amount is not 0
    When I click on the cart menu
    Then I should be sent to the checkout page
    And the total and subtotal should be visible
    And the total should be less than subtotal
    When I click on Proceed to Checkout button
    Then I should be sent to Payment Gateway page
    When select "India" as country
    Then Tax shoul be 2% of subtotal
    
Scenario: Shop-Add to Basket-View Basket-Tax Functionality Outside India
    Given I open the browser and Enter the URL "http://practice.automationtesting.in/"
    When I click on Shop Menu
    Then I should be redirected to the shop page
    When I click on add to basket on the first product
    Then on the menu bar shoul show that 1 product is added and the amount is not 0
    When I click on the cart menu
    Then I should be sent to the checkout page
    And the total and subtotal should be visible
    And the total should be less than subtotal
    When I click on Proceed to Checkout button
    Then I should be sent to Payment Gateway page
    When select "Brazil" as country
    Then Tax should be 5% of subtotal