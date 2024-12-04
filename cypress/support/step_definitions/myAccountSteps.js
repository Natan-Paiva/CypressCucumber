import { Then, When } from "@badeball/cypress-cucumber-preprocessor";
import MyAccountPage from "../pages/MyAccountPage";

const myAccountPage = new MyAccountPage

Then('{string} shoulde be visible', (str) => {
    myAccountPage.getDashboardMenu(str).should('be.visible')
})

When('I click on {string} on the dashboard Menu', (str) => {
    myAccountPage.getDashboardMenu(str).click()
})
Then('I should be redirected to {string} Page', (str) => {
    myAccountPage.getPageURL().should('include', str)
})
When('I click on view button', () => {
    myAccountPage.getViewButton().click()
})
Then('Order Number, Ordered date and Status of the order should be visible', () => {
    myAccountPage.getOrderDate().should('be.visible')
    myAccountPage.getOrderNumber().should('be.visible')
    myAccountPage.getOrderStatus().should('be.visible')
})
Then('{string} and {string} should be visible', (str1, str2) => {
    myAccountPage.getAddresses().should('contain.text', str1).and('contain.text', str2)
})
When('I click on edit on {string}', (str) => {
    myAccountPage.getAddresses().contains(str).parent().find(myAccountPage.getEditLink()).click()
})
Then('I should be able to edit the address', () => {
    myAccountPage.getSaveAdressButton().should('exist').and('be.visible')
})
Then('new password should be visible', () => {
    myAccountPage.getNewPasswordField().should('be.visible')
})