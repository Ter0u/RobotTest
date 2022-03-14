*** Settings ***
Resource                    ../logic/Logic_Advantage.robot
Resource                    ../resources/Resources_Advantage.robot

Library                     SeleniumLibrary

*** Keywords ***
Dado que acesso ao site
    Verifica_Site

Quando clico em usuário
    Clicar_Usuário

E preencho os campos de Senha e Usuário
    Preencher_Nome
    Preencher_Senha

E clico em Login
    Clico_Login

Então realizo login com sucesso
    Verifico_Login