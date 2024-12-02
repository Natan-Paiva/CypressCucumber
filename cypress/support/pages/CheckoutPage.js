class CheckoutPage{
    getCheckoutButton(){
        return cy.get('.wc-proceed-to-checkout')    
    }

    getCouponField(){
        return cy.get('#coupon_code')
    }

    getApplyCouponButton(){
        return cy.get('input[name$="apply_coupon"]')
    }

    getSubtotal(){
        return cy.get('.cart-collaterals th').contains('Subtotal').next()
    }

    getTax(){
        return cy.get('.cart-collaterals th').contains('Tax').next()
    }

    getTotal(){
        return cy.get('.cart-collaterals th').contains('Total').next()
    }

    getErrorMessage(){
        return cy.get('.woocommerce-error')
    }

    getRemoveIcon(){
        return cy.get('.remove')
    }

    getEmptyBasketMessage(){
        return cy.get('.cart-empty')
    }

    getQuantityField(){
        return cy.get('.input-text.qty')
    }

    getUpdateBasketButton(){
        return cy.get('input[value="Update Basket"]')
    }

    getPrice(){
        return cy.get("td:nth-child(4)")
    }
}
export default CheckoutPage