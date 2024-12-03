class ShopPage{
    getHomeLogo(){
        return cy.get('img[title*="Automation Practice Site"]')
    }
    getPageURL(){
        return cy.url()
    }
    getMinPrice(){
        return cy.get('#min_price')
    }
    getMaxPrice(){
        return cy.get('#max_price')
    }
    getFilterButton(){
        return cy.get('button[class*="button"]')
    }
    getProductsList(){
        return cy.get('.products.masonry-done li')
    }
    getCategoriesList(){
        return cy.get('.product-categories li')
    }
    getSorting(){
        return cy.get('.orderby')
    }
    getSaleTag(){
        return cy.get('.onsale')
    }
    getAddToBasket(){
        return cy.contains('Add to basket')
    }
}
export default ShopPage