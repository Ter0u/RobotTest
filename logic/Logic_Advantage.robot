*** Settings ***
Resource                                 ../pages/Page_Advantage.robot
Library                                  SeleniumLibrary

*** Keywords ***
Verifica_Site
    Sleep                                    10
    Wait Until Element Is Visible        ${logo_site}       20


Clicar_Usuário
    Click Element                        ${botao_usuario}
    Sleep                                    5
    

Preencher_Nome
    Input Text                           ${nome_usuario}        Barrigudo
    Sleep                                    2


Preencher_Senha
    Input Text                           ${senha_usuario}       Abc123
    Sleep                                    2


Clico_Login
    Click button                         ${botao_login}
    Sleep                                    5


Verifico_Login
    Click Element                        ${botao_usuario}       
    Wait Until Element Is Visible        ${botao_saida}         10   
