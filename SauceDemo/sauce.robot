*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        https://www.saucedemo.com/
${Senha}      secret_sauce
${login}      locked_out_user

*** Keywords ***
 Acessar Pagina do Sauce Demo
     Open Browser    url=${URL}    browser=${BROWSER}
Digitar login errado
    Input Text    id=user-name     locked_out_user    
Digitar senha
    Input Text    id=password      ${Senha}
Clicar em entrar
    Click Button    id=login-button      
Validar erro 
    Wait Until Element Is Visible     xpath=//*[@id="login_button_container"]/div/form/div[3]/h3
    
Fecha Sauce Demo
    Close Browser

Digitar login correto
    Input Text    id=user-name    standard_user 

Clicar em filtro
    Click Element   xpath=//*[@id="header_container"]/div[2]/div[2]/span/select/option[4]
    Click Element   xpath=//*[@id="header_container"]/div[2]/div[2]/span/select/option[1]
    Click Element   xpath=//*[@id="header_container"]/div[2]/div[2]/span/select/option[2]

Clicar em comprar
    Click Button    id=add-to-cart-sauce-labs-backpack
Clicar no carrinho
    Click Element    xpath=//*[@id="shopping_cart_container"]/a
Clicar em check
    Click Button   id=checkout

Prencher dados
    Input Text    id=first-name    Renato    
    Input Text    id=last-name     Teste   
    Input Text    id=postal-code   04857-560 


Finalizar compra
    Click Button    id=continue
    Click Button    id=finish
    Wait Until Element Is Visible    xpath=//*[@id="header_container"]/div[2]/span
    Click Button    id=back-to-products


