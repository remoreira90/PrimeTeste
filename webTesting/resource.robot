*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        http://automationpractice.com/index.php


*** Keywords ***
Acessar a pagina home do site da loja
    Open Browser    url=${URL}    browser=${BROWSER}

Digitar o produto "${PRODUTO}" no campo de pesquisa
    Input Text    id=search_query_top    ${PRODUTO}

Clicar no botão pesquisar
   Click Element    name=submit_search

Conferir se o produto "${PRODUTO}" é exibido corretamente
    Wait Until Element Is Visible    xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img

Fechar o navegador
    Close Browser

Conferir se o produto "renato" é exibido errado
    Wait Until Element Is Visible    xpath=//*[@id="center_column"]/p