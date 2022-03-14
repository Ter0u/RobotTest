*** Settings ***
Resource                 ../logic/Logic_Advantage.robot
Resource                 ../resources/Resources_Advantage.robot
Resource                 ../steps/Steps_Advantage.robot

Library                  SeleniumLibrary

Test Setup               Abrir_navegador
Test Teardown            Fechar_navegador

 # robot -d ./reports test_case/Test_Case.robot

*** Test Cases ***
CT1: Realizar Login com Sucesso
    Dado que acesso ao site
    Quando clico em usuário
    E preencho os campos de Senha e Usuário
    E clico em Login
    Então realizo login com sucesso