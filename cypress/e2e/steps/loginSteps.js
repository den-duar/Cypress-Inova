/// <reference types="cypress" />

import { Given, When, Then, And } from "cypress-cucumber-preprocessor";


Given("que eu acesse a pagina de login", () =>{
    cy.visit('https://saucedemo.com')
})

When("eu digitar <usuario>", ()=>{
        cy.get('[data-test="username"]').type('standard_user');
        cy.get('[data-test="password"]').type('secret_sauce');
        cy.get('[data-test="login-button"]').click();
})

Then("deve ser exibida a mensagem <mensagem>", () =>{
    cy.get('.shopping_cart_link').should('exist');
})