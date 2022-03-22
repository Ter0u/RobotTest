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

#######################################################################

E preencho os campos de Senha e Usuário incorretamente
    Preencher_Nome_Errado
    Preencher_Senha_Errada

Então deve aparecer tela de Erro
    Verifico_Login_Com_Erro

#######################################################################

E clico em criar nova conta
    Clico_Novo_Cadastro

E preencho os campos para registro e país "${país}"
    Preencho_Nome_Usuario
    Preencho_Email
    Preencho_Senha
    Preencho_Senha_Confirm
    Preencho_Primeiro_Nome
    Preencho_Sobrenome
    Preencho_Celular_Numero
    Preencher_País                         ${usuario_pais}        ${país}
    Preencho_Cidade
    Preencher_Endereco
    Preencho_Estado
    Preencho_Codigo_Postal

E concordo com os termos de aceite
    Clico_Aceite_Termos

Então realizo cadastro com sucesso
    Clico_Confirmar_Registro
    Verifico_Login