import { Given, Then, When } from "@badeball/cypress-cucumber-preprocessor"
import ShopPage from "../pages/ShopPage"
import ProductPage from "../pages/ProductPage"
import PaymentPage from "../pages/PaymentPage"

const shopPage = new ShopPage
const productPage = new ProductPage
const paymentPage = new PaymentPage

Then('I should be redirected to the shop page',() => {
    shopPage.getPageURL().should('include', 'shop')
})
When('I set the price range between {int} to {int} rps',(min, max) => {
    shopPage.getMinPrice().invoke('val', min).trigger('change', {force:true})
    shopPage.getMaxPrice().invoke('val', max).trigger('change', {force:true})
})
When('click on filter button',() => {
    shopPage.getFilterButton().click()
})
Then('all book should be between the range {int} to {int}',(min, max) => {
    shopPage.getProductsList().each(($el) => {
        cy.wrap($el).find('.woocommerce-Price-amount.amount').filter(':not(del .woocommerce-Price-amount)')
        .invoke('text').then(($priceText) =>{
            const price = parseInt($priceText.replace(/[^\d.-]/g, '').trim())
            expect(price).to.be.gte(min).and.lte(max);
        })
    })
})
When('I click on the {string} product categorie', (str) => {
    shopPage.getCategoriesList().contains(str).click()
})
Then('only products of {string} should be visible', (str) => {
    shopPage.getProductsList().each(($el) => {
        cy.wrap($el).should('have.class', `product_tag-${str.toLowerCase()}`)
    })
})
When('I sort by {string} in default sorting dropdown', (str) => {
    shopPage.getSorting().select(str)
})
Then('the products should be ordered by newness', () => {
    cy.wait(3000)
    let prevId = 0
    shopPage.getProductsList().each(($el) => {
        const prodId = parseInt($el.attr('class').match(/post-(\d+)/)[1])
        if(prevId!=0){
            expect(prodId).to.be.lessThan(prevId)
        }
        prevId = prodId
    })
})
Then('the products should be ordered by price high to low',() => {
    cy.wait(3000)
    let prevPrice = 0
    shopPage.getProductsList().each(($el) => {
        cy.wrap($el).find('.woocommerce-Price-amount.amount').filter(':not(del .woocommerce-Price-amount)')
        .invoke('text').then(($priceText) =>{
            const prodPrice = parseInt($priceText.replace(/[^\d.-]/g, '').trim())
            if(prevPrice!=0){
                expect(prodPrice).to.be.lessThan(prevPrice)
            }
            prevPrice = prodPrice
        })
    })
})
Then('the products should be ordered by price low to high',() => {
    cy.wait(3000)
    let prevPrice = 0
    shopPage.getProductsList().each(($el) => {
        cy.wrap($el).find('.woocommerce-Price-amount.amount').filter(':not(del .woocommerce-Price-amount)')
        .invoke('text').then(($priceText) =>{
            const prodPrice = parseInt($priceText.replace(/[^\d.-]/g, '').trim())
            if(prevPrice!=0){
                expect(prodPrice).to.be.greaterThan(prevPrice)
            }
            prevPrice = prodPrice
        })
    })
})
When('I click on a product with sale tag', () => {
    shopPage.getSaleTag().first().click()
})
Then('I should be redirected to the product page', () => {
    shopPage.getSaleTag().should('be.visible')
})
Then('the actual price and the old price striken should be visible', () => {
    productPage.getActualPrice().should('be.visible')
    productPage.getOldPrice().should('be.visible')
})
When('I click on add to basket on the first product', () => {
    shopPage.getAddToBasket().first().click()
})
Then('on the menu bar shoul show that {int} product is added and the amount is not {int}', (qnt,amount) => {
    productPage.getCartContents().should('contain', qnt)
    productPage.getCartAmount().then(($cartPrice) => {
        const cartPrice = parseFloat($cartPrice.text().replace(/[^\d.-]/g, ''))
        expect(cartPrice).to.be.greaterThan(amount)
    })
})

Then('Tax shoul be 2% of subtotal', () => {
    paymentPage.getSubTotal().then(($subtotal) => {
        const subtotal =  parseFloat($subtotal.text().replace(/[^\d.-]/g, ''))
        paymentPage.getTax().then(($tax) => {
            const tax =  parseFloat($tax.text().replace(/[^\d.-]/g, ''))
            const expectedTax = subtotal*0.02
            expect(expectedTax).to.eq(tax)
        })
    })
})
Then('Tax should be 5% of subtotal', () => {
    cy.wait(3000)
    paymentPage.getSubTotal().then(($subtotal) => {
        const subtotal =  parseFloat($subtotal.text().replace(/[^\d.-]/g, ''))
        paymentPage.getTax().then(($tax) => {
            const tax =  parseFloat($tax.text().replace(/[^\d.-]/g, ''))
            const expectedTax = subtotal*0.05
            expect(expectedTax).to.eq(tax)
        })
    })
})