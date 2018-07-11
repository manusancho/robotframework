*** Settings ***
Documentation  Pruebas de escenarios de Suite2
...            para verificar correcto acceso a
...            sistema

*** Variables ***
${site}  Amazon

*** Test Cases ***
Test Case 1
    Log  Testeando ...  console=true

Test Case 2
    Log  Se ha iniciado el TC2  console=true