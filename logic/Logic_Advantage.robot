*** Settings ***
Resource                                 ../pages/Page_Advantage.robot
Library                                  SeleniumLibrary
Library                                  FakerLibrary                 locale=pt_BR

*** Keywords ***

Tirar_Print
    Sleep                                2
    Capture Page Screenshot


Verifica_Site
    Sleep                                10
    Wait Until Element Is Visible        ${logo_site}                  20


Clicar_Usuário
    Click Element                        ${botao_usuario}
    Sleep                                3
    

Preencher_Nome
    Input Text                           ${nome_usuario}               User016
    Sleep                                2


Preencher_Senha
    Input Text                           ${senha_usuario}              Abc123
    Sleep                                2


Clico_Login
    Click button                         ${botao_login}
    Sleep                                3


Verifico_Login
    Clicar_Usuário       
    Wait Until Element Is Visible        ${botao_saida}                10   


Preencher_Nome_Errado
    Input Text                           ${nome_usuario}               barrigudo
    Sleep                                2


Preencher_Senha_Errada
    Input Text                           ${senha_usuario}              A123
    Sleep                                2


Verifico_Login_Com_Erro      
   Wait Until Element Is Visible         ${resultado}                  10  


Clico_Novo_Cadastro
    Click Element                        ${botao_nova_conta}
    Sleep                                3

Preencho_Nome_Usuario
    ${NAMEFAKE}                          FakerLibrary.User Name
    Input Text                           ${usuario_nome}               ${NAMEFAKE}
    Sleep                                2


Preencho_Email
    ${EMAILFAKE}                         FakerLibrary.Email
    Input Text                           ${usuario_email}              ${EMAILFAKE}
    Sleep                                2


Preencho_Senha
    Input Text                           ${usuario_senha}              Abc123
    Sleep                                2


Preencho_Senha_Confirm
    Input Text                           ${usuario_confirm_senha}      Abc123
    Sleep                                2
    

Preencho_Primeiro_Nome
    ${NAMEFAKE}                          FakerLibrary.First Name
    Input Text                           ${usuario_primeiro_nome}      ${NAMEFAKE}
    Sleep                                2


Preencho_Sobrenome
    ${LNAMEFAKE}                         FakerLibrary.Last Name
    Input Text                           ${usuario_sobrenome}          ${LNAMEFAKE}
    Sleep                                2


Preencho_Celular_Numero
    ${NUMEROFAKE}                        FakerLibrary.Phone Number
    Input Text                           ${celular_numero}             ${NUMEROFAKE}
    Sleep                                2


Preencher_País
    [Arguments]                          ${combobox}                   ${opcaocombobox}
    Wait Until Element Is Visible        ${combobox}                   10
    Click Element                        ${combobox}
    ${Item}                              Set Variable                  ${combobox}//option[@label='${opcaocombobox}']
    Wait Until Element Is Visible        ${Item}                       10
    Click Element                        ${Item}
    Sleep                                2


Preencho_Cidade
    ${CIDADEFAKE}                        FakerLibrary.City
    Input Text                           ${usuario_cidade}              ${CIDADEFAKE}             
    Sleep                                2


Preencher_Endereco
    ${ENDERECOFAKE}                      FakerLibrary.Street Address
    Input Text                           ${usuario_endereco}            ${ENDERECOFAKE}
    Sleep                                2


Preencho_Estado
    ${ESTADOFAKE}                        FakerLibrary.State
    Input Text                           ${usuario_estado}              ${ESTADOFAKE}
    Sleep                                2


Preencho_Codigo_Postal
    ${CODIGOPOSTAL}                      FakerLibrary.Postcode
    Input Text                           ${usuario_codigo_postal}       ${CODIGOPOSTAL}
    Sleep                                2


Clico_Aceite_Termos
    Click Element                        ${aceite_termos}
    Sleep                                3


Clico_Confirmar_Registro
    Click Element                        ${confirma_registro}
    Sleep                                3