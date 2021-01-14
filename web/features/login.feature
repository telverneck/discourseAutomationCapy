#language:pt

Funcionalidade:Login 
    Descricao


Cenario:Nova sessao

Dado que tenho um email "telverneck@hotmail.com"
E acesso a pagina de Login
Quando eu submeto meu email
Entao devo ver a area de administracao

@doing
Cenario:Email invalido

Dado que tenho um email "email@invalido.com"
E acesso a pagina de Login
Quando eu submeto meu email
Entao devo ver uma mensagem de alerta