class ShopPage{
    getHomeLogo(){
        return cy.get('img[title*="Automation Practice Site"]')
    }
}
export default ShopPage