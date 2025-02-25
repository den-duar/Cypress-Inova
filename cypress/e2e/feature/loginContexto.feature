#language: pt

Funcionalidade: Login do saucedemo 

    Como usuário
    Quero logar no site
    Para fazer compras

    Contexto: 
        Dado que eu acesse a pagina de login


        Esquema do Cenario: Logins invalidos
        
            Quando eu digitar o "<usuario>"
            E a "<senha>"
            E apertar o botao login
            Então deve ser exibida a mensagem "<mensagem>"

        Exemplos:
            | usuario         | senha        | mensagem                                                                  |
            | stand_user      | secret_sauce | Epic sadface: Username and password do not match any user in this service |
            | standard_user   | secret       | Epic sadface: Username and password do not match any user in this service |
            |                 | secret_sauce | Epic sadface: Username is required                                        |
            | stand_user      |              | Epic sadface: Password is required                                        |
            | locked_out_user | secret_sauce | Epic sadface: Sorry, this user has been locked out.                       |


        Esquema do Cenario: Logins validos

            Quando eu digitar o "<usuario>"
            E a "<senha>"
            E apertar o botao login
            Entao deve seguir para a tela que tenha o carrinho
        
        Exemplos:
            | usuario                 | senha        |
            | standard_user           | secret_sauce |
            | problem_user            | secret_sauce |
            | performance_glitch_user | secret_sauce |
            | error_user              | secret_sauce |
            | visual_user             | secret_sauce |