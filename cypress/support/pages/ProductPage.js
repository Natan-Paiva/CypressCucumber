class ProductPage{
    getAddToBasketButton(){
        return cy.get('.single_add_to_cart_button')
    }

    getDescripitionTab(){
        return cy.get('.description_tab')
    }

    getDescripitionSection(){
        return cy.get('#tab-description')
    }

    getReviewsTab(){
        return cy.get('.reviews_tab')
    }

    getReviewsSection(){
        return cy.get('.woocommerce-Reviews-title')
    }

    getCartContents(){
        return cy.get('.cartcontents')
    }

    getCartAmount(){
        return cy.get('.amount')
    }

    getProductPrice(){
        return cy.get('.price')
    }

    getGoToCartMenu(){
        return cy.get('.cartcontents')
    }
    getOldPrice(){
        return cy.get('.price del')
    }
    getActualPrice(){
        return cy.get('.price ins')
    }
}
export default ProductPage