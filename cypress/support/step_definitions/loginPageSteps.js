import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import HomePage from "../pages/HomePage";
import MyAccountPage from "../pages/MyAccountPage";


const homePage = new HomePage()
const myAccountPage = new MyAccountPage()

Given('I open the browser and enter the URL {string}', (str) => {
    cy.visit(str)
})
When('I click on the My Account Menu', () => {
    homePage.getMyAccountMenu().click({force:true})
})
Then('I should be redirected to the My Account Page', () => {
    myAccountPage.getPageURL().should('include', 'my-account')
})
When('I enter a the valid username {string}', (str) => {
    myAccountPage.getUsername().type(str)
})
When('the valid password {string}', (str) => {
    myAccountPage.getPassword().type(str)
})
When('click on the login button', () => {
    myAccountPage.getLoginButton().click()      
})
Then('The message {string} should be visible', (str) => {
    myAccountPage.getMyAccountContent().should('be.visible')
})
When('the invalid password {string}', (str) => {
    myAccountPage.getPassword().type(str)
})
Then('an error message should be visible and containing the words {string} and {string}', (str1, str2) => {
    myAccountPage.getErrorMessage().should('be.visible').and(($el) => {
        const errorMessage = $el.text().toLowerCase()
        expect(errorMessage).to.include(str1)
        expect(errorMessage).to.include(str2)
    })
})
When('leave password empty', () => {
    myAccountPage.getPassword().clear()
})
When('I leave the username empty', () => {
    myAccountPage.getUsername().clear()
})
When('I type the valid password {string}', (str) => {
    myAccountPage.getPassword().type(str)
})
Then('the password should be masked', () => {
    myAccountPage.getPassword().should('have.attr', 'type', 'password')
})
When('I enter a the valid username with case changed {string}', (str) => {
    myAccountPage.getUsername().type(str)
})
When('I click on {string}', (str) => {
    myAccountPage.getSignOut(str).click()
})
Then('I should be redirected to the login Page', () => {
    myAccountPage.getUsername().should('be.visible')
})
When('I press back button', () => {
    cy.go('back')
})
Then('{string} should not be visible', () => {
    myAccountPage.getMyAccountContent().should('not.be.exist')
})