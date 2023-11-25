class LoginPage {

    acessarSauceHome(){
        cy.visit('https://saucedemo.com')
    }

    digitarUsuario(user){
        if(user === ""){
            cy.get('[data-test="username"]').invoke('val', '')
        }
        else{
            cy.get('[data-test="username"]').type(user);
        }
    }

    digitarSenha(pass) {
        if(pass === ""){
            cy.get('[data-test="password"]').invoke('val', '')
        }else{
            cy.get('[data-test="password"]').type(pass, { log: false })
        }
    }

    confirmarLogin() {
        cy.get('[data-test="login-button"]').click()
    }

    validarLoginComTextoDaLogo(text) {
        cy.get('.app_logo').should('have.text', text)
    }

    validarMensagem(msg){
        cy.get('[data-test="error"]').should('have.text', msg)
    }

    validarTelaCarrinho(){
        cy.get('.shopping_cart_link').should('exist')
    }

}


export const loginPage = new LoginPage()