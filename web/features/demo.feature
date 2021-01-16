#language:pt

Funcionalidade:DEMO 
    Verificar as funcionalidades da tela DEMO

    @doing
    Cenario:Busca
        Quando informo o texto de uma busca "Test"
        E efetuo a busca
        Entao devo ver o resultado encontrado
    
    Cenario: Busca sem resultado 
        Quando informo o texto de uma busca "<busca>"
        Entao devo ver a mensagem "<resultado>"

    Exemplos:
    |busca                   |resultado                       |
    |sem resultado           |No results found.               |
    |                        |Your search term is too short.  |
