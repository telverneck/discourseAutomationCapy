#language:pt

Funcionalidade:DEMO 
    Verificar as funcionalidades da tela DEMO. Verificar busca

    @smoke
    Cenario:Busca
        Quando informo o texto de uma busca "Test"
        E efetuo a busca
        Entao devo ver o resultado encontrado
    
   
    Esquema do Cenario: Busca preliminar sem resultado 
        Quando informo o texto de uma busca "<busca>"
        Entao devo ver a mensagem preliminar "<resultado>"

    Exemplos:
    |busca                           |resultado                       |
    |no resultsss                    |No results found.               |
    |654056406006                    |No results found.               |
    |a                               |Your search term is too short.  | 
    |.+                              |Your search term is too short.  | 
    |\n \n \n \n \n \n               |Your search term is too short.  | 
    |0,                              |Your search term is too short.  |
    |--                              |Your search term is too short.  |
    |#                               |Your search term is too short.  |
    
  
    Esquema do Cenario:Busca sem resultados
        Quando informo o texto de uma busca "<busca>"
        E efetuo a busca
        Entao devo ver o resultado encontrado
    
    Exemplos:
    |busca                           |
    |no resultsss                    |
    |654056406006                    |
    |a                               | 
    |.+                              | 
    |\n \n \n \n \n \n               | 
    |0,                              |
    |--                              |
    |#                               |
    
