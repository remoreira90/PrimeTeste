*** Settings ***
Documentation    Sauce Suite exemplo
Resource         sauce.robot

*** Test Cases ***

1-A acessar Sauce Demo login invalido
    Acessar Pagina do Sauce Demo
    Digitar login errado
    Digitar senha
    Clicar em entrar
    Validar erro
    Fecha Sauce Demo

2-Acessar Sauce Demo 
    Acessar Pagina do Sauce Demo
    Digitar login correto
    Digitar senha
    Clicar em entrar
    Fecha Sauce Demo

3- Validar filtro
    Acessar Pagina do Sauce Demo
    Digitar login correto
    Digitar senha
    Clicar em entrar
    Clicar em filtro
    Fecha Sauce Demo

4-Realizar uma compra
    Acessar Pagina do Sauce Demo
    Digitar login correto
    Digitar senha
    Clicar em entrar
    Clicar em comprar
    Clicar no carrinho
    Clicar em check
    Prencher dados
    Finalizar compra
    Fecha Sauce Demo