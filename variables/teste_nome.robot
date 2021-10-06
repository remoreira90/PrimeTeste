** Settings ***
Documentation   Meu Perfil

*** Variables ***
${nome}     Renato
${idade}    31 anos
${profissao}    Analista
${hoby}     Academia

*** Test Cases ***
Informa meu nome
    Meu nome:
Informa minha idade
    Minha idade:
Informa minha profissao
    Minha profissao:
Informa meu hoby
    Meu hoby:


*** Keywords ***

Meu nome:
    Log     ${nome}
Minha idade:
    Log     ${idade}
Minha profissao:
    Log     ${profissao}
Meu hoby:
    Log     ${hoby}