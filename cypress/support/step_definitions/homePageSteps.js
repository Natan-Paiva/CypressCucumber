import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import HomePage from "../pages/HomePage";
import ShopPage from "../pages/ShopPage";
import ProductPage from "../pages/ProductPage";
import CheckoutPage from "../pages/CheckoutPage";
import PaymentPage from "../pages/PaymentPage";
import ConfirmationPage from "../pages/ConfirmationPage";

const homePage = new HomePage()
const shopPage = new ShopPage()
const productPage = new ProductPage()
const checkoutPage = new CheckoutPage()
const paymentPage = new PaymentPage()
const confirmationPage = new ConfirmationPage

Given('I open the browser and Enter the URL {string}', (url) => {
    homePage.visit(url)
})

When("I click on Shop Menu", () => {
    homePage.getShopMenu().click({force:true})
})

When('click on Home logo', () => {
    shopPage.getHomeLogo().click()
})

Then('the home page must contains only three Sliders', () => {
    homePage.getSlider().should('have.length', 3)
})

Then('the home page must contains only three arrivals', () => {
    homePage.getNewArrivals().should('have.length', 3)
})

When('I click in the image of a product', () => {
    homePage.getNewArrivalImage().first().click()
})

Then('I should be sent to the product page that should contain a button add to basket', () => {
    productPage.getAddToBasketButton().should('be.visible')
})

When('I click on the desciption tab', () => {
    productPage.getDescripitionTab().click()
})
    
Then('the product desciption should be visible', () => {
    productPage.getDescripitionSection().should('be.visible')
})

When('I click on the reviews tab', () => {
    productPage.getReviewsTab().click()
})

Then('the product reviews should be visible', () => {
    productPage.getReviewsSection().should('be.visible')
})

When('I click on add to basket button', () => {
    productPage.getAddToBasketButton().click()
})

Then('on the menu bar shoul show that {int} product is added and the amount', (num,) => {
    productPage.getCartContents().should('contain', num)
    productPage.getCartAmount().then(($cartPrice) => {
        const cartPrice = parseFloat($cartPrice.text().replace(/[^\d.-]/g, '')).toFixed(2)

        productPage.getProductPrice().then(($prodPrice) => {
            const prodPrice = parseFloat($prodPrice.text().replace(/[^\d.-]/g, '')).toFixed(2)
            expect(prodPrice).to.equal(cartPrice)
        })
    })
})

When('I click on the cart menu', () => {
    productPage.getGoToCartMenu().click({force:true})
})

Then('I should be sent to the checkout page', () => {
    checkoutPage.getCheckoutButton().should('be.visible')
})

When('I entre the coupon {string}', (coupon) => {
    checkoutPage.getCouponField().type(coupon)
    checkoutPage.getApplyCouponButton().click()
})

Then('I should get 50rps off on the total', () => {
    checkoutPage.getTax().should('not.contain', '10');
    checkoutPage.getSubtotal().then(($subtotal) => {
        const subtotal = parseFloat($subtotal.text().replace(/[^\d.-]/g, ''))
        checkoutPage.getTax().then(($tax) => {
            const tax = parseFloat($tax.text().replace(/[^\d.-]/g, ''))
            checkoutPage.getTotal().then(($total) => {
                const total = parseFloat($total.text().replace(/[^\d.-]/g, ''))
                const expectedTotal = ((subtotal + tax) - 50)
                expect(total).to.equal(expectedTotal)
            })
        })
    })
})

When('I click in the image of the last', () => {
    homePage.getNewArrivalImage().last().click()
})

Then('a message {string} should appear', ($message) => {
    checkoutPage.getErrorMessage().should('contain', $message)
})

When('I remove a product', () => {
    checkoutPage.getRemoveIcon().click()
})

Then('the basket should be empty', () => {
    checkoutPage.getEmptyBasketMessage().should('contain', 'empty')
})

When('I change the quantity to {string}', ($quantity) => {
    checkoutPage.getQuantityField().clear()
    checkoutPage.getQuantityField().type($quantity)
})

Then ('The update basket button should be clickable', () => {
    checkoutPage.getUpdateBasketButton().should('not.be.disabled')
})

When ('I click on the update basket button the subtotal should be doubled', () => {
    checkoutPage.getUpdateBasketButton().click()
    checkoutPage.getTax().should('not.contain', '10')
    checkoutPage.getSubtotal().then(($subtotal) => {
        const subtotal = parseFloat($subtotal.text().replace(/[^\d.-]/g, ''))
        checkoutPage.getPrice().then(($price) => {
            const price = parseFloat($price.text().replace(/[^\d.-]/g, ''))
            const expectedTotal = (price * 2)
            expect(subtotal).to.equal(expectedTotal)
        })
    })
})

Then('the total and subtotal should be visible', () => {
    checkoutPage.getSubtotal().should('be.visible')
    checkoutPage.getTotal().should('be.visible')
})

Then('the total should be less than subtotal', () => {
    checkoutPage.getSubtotal().then(($subtotal) => {
        const subtotal = parseFloat($subtotal.text().replace(/[^\d.-]/g, ''))
        checkoutPage.getTotal().then(($total) => {
            const total = parseFloat($total.text().replace(/[^\d.-]/g, ''))
            expect(subtotal).to.be.below(total)
        })
    })
})

When('I click on Proceed to Checkout button', () => {
    checkoutPage.getCheckoutButton().click()
})
    
Then('I should be sent to Payment Gateway page', () => {
    paymentPage.getPageUrl().should('include', 'checkout')
})

Then('{string}, {string}, {string} and Payment gateway details should be visible', (t1,t2,t3) => {
    paymentPage.getBillingDetails(t1).should('be.visible')
    paymentPage.getOrderDetails(t2).should('be.visible')
    paymentPage.getAdditionalDetails(t3).should('be.visible')
    paymentPage.getPaymentDetails().should('be.visible')
})

When('I enter first name {string}',(str) => {
    paymentPage.getFirstName().type(str)
})
When('last name {string}',(str) => {
    paymentPage.getLastName().type(str)
})
When('email {string}',(str) => {
    paymentPage.getEmail().type(str)
})
When('phone {string}',(str) => {
    paymentPage.getPhone().type(str)
})
When('select {string} as country',(str) => {
    paymentPage.getCountry().type(str)
    paymentPage.getSelectResults().each(($el, index, $list) => {
        if($el.text() === 'Brazil'){
            cy.wrap($el).click()
        }
    })
})
When('type the adress {string}',(str) => {
    paymentPage.getAdress().type(str)
})
When('city {string}',(str) => {
    paymentPage.getCity().type(str)
})
When('state {string}',(str) => {
    paymentPage.getState().type(str)
    paymentPage.getSelectResults().each(($el, index, $list) => {
        if($el.text() === 'Rio Grande do Sul'){
            cy.wrap($el).click()
        }
    })
})
When('postcode {string}',(str) => {
    paymentPage.getPostcode().type(str)
})
When('click on Place order button',() => {
    paymentPage.getPlaceOrderButton().click()
})
Then('I should be sent to Order confirmation page',() => {
    confirmationPage.getPageUrl().should('include', 'order-received')
})