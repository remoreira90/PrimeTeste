*** Settings ***
Documentation    Suite Exemplo  Webtesting
Resource         resource.robot

*** Test Cases ***
Caso de teste 01: pesquisar um produto no Site
    Acessar a pagina home do site da loja
    Digitar o produto "blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "blouse" é exibido corretamente
    Fechar o navegador
    
Caso de teste 02: pesquisar um produto invalido
    Acessar a pagina home do site da loja
    Digitar o produto "renato" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "renato" é exibido errado
    Fechar o navegador