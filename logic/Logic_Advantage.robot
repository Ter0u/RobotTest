*** Settings ***
Resource                                 ../pages/Page_Advantage.robot
Library                                  SeleniumLibrary

*** Keywords ***
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
    Input Text                           ${usuario_nome}               Rodolfo
    Sleep                                2


Preencho_Email
    Input Text                           ${usuario_email}              pericles02@gmail.com
    Sleep                                2


Preencho_Senha
    Input Text                           ${usuario_senha}              Batata0901
    Sleep                                2


Preencho_Senha_Confirm
    Input Text                           ${usuario_confirm_senha}      Batata0901
    Sleep                                2
    

Preencho_Primeiro_Nome
    Input Text                           ${usuario_primeiro_nome}      pericles
    Sleep                                2


Preencho_Sobrenome
    Input Text                           ${usuario_sobrenome}          rodriguez
    Sleep                                2


Preencho_Celular_Numero
    Input Text                           ${celular_numero}            1138747402
    Sleep                                2


Preencher_País
    [Arguments]                             ${combobox}         ${opcaocombobox}
    Wait Until Element Is Visible           ${combobox}                            10
    Click Element                           ${combobox}
    ${Item}                                 Set Variable                           ${combobox}//option[@label='${opcaocombobox}']
    Wait Until Element Is Visible           ${Item}                                10
    Click Element                           ${Item}
    Sleep                                   2


Preencho_Cidade
    Input Text                           ${usuario_cidade}            Centro, Osasco         
    Sleep                                2


Preencher_Endereco
    Input Text                           ${usuario_endereco}          Torre Offices - Av Domingos Odália Filho, 301
    Sleep                                2


Preencho_Estado
    Input Text                           ${usuario_estado}            São Paulo
    Sleep                                2


Preencho_Codigo_Postal
    Input Text                           ${usuario_codigo_postal}     06454050
    Sleep                                2


Clico_Aceite_Termos
    Click Element                        ${aceite_termos}
    Sleep                                3


Clico_Confirmar_Registro
    Click Element                        ${confirma_registro}
    Sleep                                3