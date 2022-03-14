*** Settings ***        
Library                                     SeleniumLibrary

*** Variables ***
${browser}                                  chrome
${url}                                      https://www.advantageonlineshopping.com/#/

*** Keywords ***
Abrir_Navegador
    Open Browser                            ${url}              ${browser}
    Maximize Browser Window


Fechar_navegador
    Close Browser


