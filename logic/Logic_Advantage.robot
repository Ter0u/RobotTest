*** Settings ***
Resource                                 ../pages/Page_Advantage.robot
Library                                  SeleniumLibrary

*** Keywords ***
Verifica_Site
    Sleep                                    10
    Wait Until Element Is Visible        ${logo_site}       20


Clicar_Usuário
    Click Element                        ${botao_usuario}
    Sleep                                    2
    

Preencher_Nome
    Input Text                           ${nome_usuario}        Barrigudo
    Sleep                                    2


Preencher_Senha
    Input Text                           ${senha_usuario}       Abc123
    Sleep                                    2


Clico_Login
    Click button                         ${botao_login}
    Sleep                                    2


Verifico_Login
    Clicar_Usuário       
    Wait Until Element Is Visible        ${botao_saida}         10   


Preencher_Nome_Errado
    Input Text                           ${nome_usuario}        barrigudo
    Sleep                                    2


Preencher_Senha_Errada
    Input Text                           ${senha_usuario}       A123
    Sleep                                    2


Verifico_Login_Com_Erro      
   Wait Until Element Is Visible          ${resultado}          10  

