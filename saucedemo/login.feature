#language: pt

Funcionalidade: Login do saucedemo

    Como usuário
    Quero logar no site
    Para fazer compras

    Contexto: 
        Dado que eu acesse a pagina de login

        Cenario: 1 - Autenticação válida:

            Quando eu digitar o username "standard_user" 
            E digitar o password "secret_sauce"
            Então deve ser exibida a palavra "Products"

        Cenario: 2 - Usuário inexistente

            Quando eu digitar o username "stand_user"
            E digitar o password "secret_sauce"
            Então deve ser exibida a mensagem "Epic Sadface: Username and password do not match any user in this service"

        Cenario: 3 - Usuário com senha invalida

            Quando eu digitar o username "standard_user"
            E digitar o password "secret"
            Então deve ser exibida a mensagem "Epic Sadface: Username and password do not match any user in this service"
