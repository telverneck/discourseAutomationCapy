#language:pt

Funcionalidade:DEMO 
    Verificar as funcionalidades da tela DEMO. Verificar busca

    
    Cenario:Busca
        Quando informo o texto de uma busca "Test"
        E efetuo a busca
        Entao devo ver o resultado encontrado
    
    @doing
    Cenario: Busca sem resultado 
        Quando informo o texto de uma busca "<busca>"
        Entao devo ver a mensagem "<resultado>"

    Exemplos:
    |busca                           |resultado                       |
    |no resultsss                    |No results found.               |
    |a                               |Your search term is too short.  | 
    |.+                              |Your search term is too short.  | 
    |\n \n \n \n \n \n               |Your search term is too short.  | 
    |0,                              |Your search term is too short.  |
    |--                              |Your search term is too short.  |
    |#                               |Your search term is too short.  |
    |web\features\largeString.txt    |Your search term is too short.  |
     
