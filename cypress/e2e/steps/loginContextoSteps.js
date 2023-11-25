/// <reference types="cypress" />

import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";
import { loginPage } from "../../pages/login.page";

Given("que eu acesse a pagina de login", () => {
    loginPage.acessarSauceHome()
});

When("eu digitar o {string}", (usuario) => {
    loginPage.digitarUsuario(usuario)
});

And("a {string}", (senha) => {
    loginPage.digitarSenha(senha)
});

And("apertar o botao login", () =>{
    loginPage.confirmarLogin()
});

Then("deve ser exibida a mensagem {string}", (mensagem) => {
    loginPage.validarMensagem(mensagem);
});

Then("deve seguir para a tela que tenha o carrinho", () =>{
    loginPage.validarTelaCarrinho();
});
