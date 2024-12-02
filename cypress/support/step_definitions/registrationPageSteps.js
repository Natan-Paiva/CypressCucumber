import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import HomePage from "../pages/HomePage";
import MyAccountPage from "../pages/MyAccountPage";


const homePage = new HomePage()
const myAccountPage = new MyAccountPage()

When('I enter a valid email on register form {string}', (str) => {
    myAccountPage.getRegEmail().type(str)
})
When('a valid password {string}', (str) => {
    myAccountPage.getRegPassword().type(str)
})
When('I click on Register button', () => {
    myAccountPage.getRegButton().click()
})
When('I enter a invalid email on register form {string}', (str) => {
    myAccountPage.getRegEmail().type(str)
})
When('I leave email empty on register form', () => {
    myAccountPage.getRegEmail().clear()
})
When('leave password empty on register form', () => {
    
})