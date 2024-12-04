class MyAccountPage{
    getPageURL(){
        return cy.url()
    }
    getUsername(){
        return cy.get('#username')
    }
    getPassword(){
        return cy.get('#password')
    }
    getLoginButton(){
        return cy.get('input[value="Login"]')
    }
    getMyAccountContent(){
        return cy.get('.woocommerce-MyAccount-content')
    }
    getErrorMessage(){
        return cy.get('.woocommerce-error')
    }
    getSignOut(str){
        return cy.contains(str)
    }
    getRegEmail(){
        return cy.get('#reg_email')
    }
    getRegPassword(){
        return cy.get('#reg_password')
    }
    getRegButton(){
        return cy.get('input[value*="Register"]')
    }
    getDashboardMenu(str){
        return cy.get('ul li').contains(str)
    }
    getOrderNumber(){
        return cy.get('.order-number')
    }
    getOrderDate(){
        return cy.get('.order-date')
    }
    getOrderStatus(){
        return cy.get('.order-status')
    }
    getViewButton(){
        return cy.get('.button.view')
    }
    getAddresses(){
        return cy.get('.u-columns div')
    }
    getEditLink(){
        return '.edit'
    }
    getSaveAdressButton(){
        return cy.get('.button')
    }
    getNewPasswordField(){
        return cy.get('#password_1')
    }
}
export default MyAccountPage