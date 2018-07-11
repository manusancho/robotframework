*** Settings ***
Documentation     Práctica1: Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../Resources/keywords.robot

*** Variables ***
${url}  http://www.google.es
@{BROWSER_LIST}  Firefox

*** Test Cases ***
Test busqueda simple
    [Tags]  busqueda
    :for    ${browser}    in    @{BROWSER_LIST}
    \  Abrir, buscar y cerrar navegador    ${browser}  ${url}
    \  ${valor retornado}=  Accion que retorna un valor  Manu
    \  log  Valor retornado por la keyword es ${valor retornado}

