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
}
export default MyAccountPage