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

        Esquema do Cenario: Logins invalidos com tabela

            Quando eu digitar o <usuario>
            E a <senha>
            Então deve ser exibida a mensagem <mensagem>

        Exemplos:
            |    usuario    |    senha     |                                mensagem                                   |
            |  "stand_user" |"secret_sauce"|"Epic sadface: Username and password do not match any user in this service"|
            |"standard_user"|   "secret"   |"Epic sadface: Username and password do not match any user in this service"|
            |      ""       |"secret_sauce"|                 "Epic sadface: Username is required"                      |
            |  "stand_user" |       ""     |                 "Epic sadface: Password is required"                      |
