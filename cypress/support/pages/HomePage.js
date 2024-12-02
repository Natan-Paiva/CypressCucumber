class HomePage{
    visit(url){
        cy.visit(url)
    }
    getShopMenu(){
        return cy.get('#menu-item-40 a')
    }
    getMyAccountMenu(){
        return cy.get('#menu-item-50 a')
    }
    getHomeLogo(){
        return cy.get('img[title*="Automation Practice Site"]')
    }
    getSlider(){
        return cy.get('.n2-ss-slide-background > .n2-ss-slide-background-image')
    }
    getNewArrivals(){
        return cy.contains('new arrivals').parents().find('.products')
    }
    getNewArrivalImage(){
        return cy.get('.attachment-shop_catalog')
    }

}

export default HomePage