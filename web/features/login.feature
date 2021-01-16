#language:pt

Funcionalidade:Login 
    Verificar a Funcionalidade de Login na pagina DEMO, Usuario deve inserir os 
    dados para que entao possa visualizar a area de gerenciamento com controle de dados.

    @smoke
    Cenario:Nova sessao
        Dado que tenho um email "telverneck@hotmail.com"
        Quando eu submeto meu email
        Entao devo ver a area de administracao


    Cenario:Email invalido
        Dado que tenho um email "email@invalido.com"
        Quando eu submeto meu email
        Entao devo ver uma mensagem de alerta "Incorrect username, email or password"

    Cenario:Email em branco
        Dado que tenho um email ""
        Quando eu submeto meu email
        Entao devo ver uma mensagem de alerta "Please enter your email or username, and password."

    @smoke
    Esquema do Cenario: casos em comum 
        Dado que tenho um email "<email>"
        Quando eu submeto meu email
        Entao devo ver uma mensagem de alerta "<mensagem>"

    Exemplos:
    |email                   |mensagem                                            |
    |email@invalido.com      |Incorrect username, email or password               |
    |                        |Please enter your email or username, and password.  |
