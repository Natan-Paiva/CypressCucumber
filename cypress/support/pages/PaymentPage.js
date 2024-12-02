class PaymentPage{
    getPageUrl(){
        return cy.url()
    }

    getBillingDetails(str){
        return cy.contains(str)
    }

    getOrderDetails(str){
        return cy.contains(str)
    }

    getAdditionalDetails(str){
        return cy.contains(str)
    }

    getPaymentDetails(){
        return cy.get('#payment')
    }

    getFirstName(){
        return cy.get('#billing_first_name')
    }

    getLastName(){
        return cy.get('#billing_last_name_field')
    }

    getEmail(){
        return cy.get('#billing_email')
    }

    getPhone(){
        return cy.get('#billing_phone')
    }

    getCountry(){
        return cy.get('#s2id_billing_country')
    }
    getSelectResults(){
        return cy.get("li[class*='select2-results']")
    }

    getAdress(){
        return cy.get('#billing_address_1')
    }

    getCity(){
        return cy.get('#billing_city')
    }

    getState(){
        return cy.get('#s2id_billing_state')
    }
   
    getPostcode(){
        return cy.get('#billing_postcode')
    }

    getPlaceOrderButton(){
        return cy.get('#place_order')
    }
}
export default PaymentPage