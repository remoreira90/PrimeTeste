*** Settings ***
Documentation   Meu teste de variaveis

*** Variables ***
${menssagem}    Hello word!

*** Test Cases ***
Meu teste de impressao de menssagem no terminal
    Logar no terminal uma menssagem

*** Keywords ***
Logar no terminal uma menssagem
    Log To Console  ${menssagem}


