*** Settings ***
Documentation  Pruebas con el site Amazon
Library        SeleniumLibrary
Resource       ../Resources/keywords.robot
Library        ../External/functions.py


*** Variables ***
${site}  Amazon
${url}  http://www.amazon.es
${browser}  Firefox
${AMAZON_USER}  manu.sancho@gmail.com
${AMAZON_PASSWORD}  *******

*** Keywords ***
Menor de edad
    ${resultado}=  test_python
    Log  menor de edad  console=true

Mayor de edad
    Log  mayor de edad  console=true


Test edad
    [Arguments]  ${edad}
    Log  Si tienes ${edad} años eres:  console=true
    run keyword if  ${edad} >= 18  Mayor de edad
    ...         ELSE  Menor de edad



*** Test Cases ***
Test url
    [Tags]  url
    Log  Comprobando si url ${url} apunta a Amazon  console=true
    Open Browser  ${url}  ${browser}
    ${current title}=  Get title
    Log  El título es '${current title}'  console=true
    Should contain  ${current title}  Amazon.es
    Close Browser

Test Login
    [Tags]  login
    Log  Comprobando login en ${url}  console=true
    Open Browser  ${url}  ${browser}
    Mouse Over  id=nav-link-accountList
    sleep  1
    Click Link  xpath://div[@id='nav-flyout-ya-signin']/a[@class='nav-action-button']
    sleep  1
    Input Text  id=ap_email  ${AMAZON_USER}
    Press Key   id=ap_email  \\13
    sleep  2
    Input Text  id=ap_password  ${AMAZON_PASSWORD}
    Press Key   id=ap_password  \\13

#    Close Browser


Accion que recibe parametroi y en funcion del mismo realiza accion A o B
    [Tags]  edad
    Test edad  16
    Test edad  17
    Test edad  18