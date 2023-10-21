/// <reference types="cypress" />

context("Acesso a pagina de login", () => {
    beforeEach(() => {
        cy.visit('https://www.saucedemo.com/');
    });

    afterEach(() => {
        cy.clearAllSessionStorage({log: true});
        cy.screenshot();
    });

    it("Login valido", () => {
        cy.get('[data-test="username"]').type('standard_user');
        cy.get('[data-test="password"]').type('secret_sauce');
        cy.get('[data-test="login-button"]').click();
        cy.get('.shopping_cart_link').should('exist');
            
    })
})