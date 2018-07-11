
*** Keywords ***
Inicio sistema
    [Arguments]  ${parametro}=TSuite
    Log  Se ha iniciado el test case con parametro=${parametro}  console=true

Finalizacion sistema
    [Arguments]  ${parametro}=TSuite
    Log  Se ha finalizado el test case con parametro=${parametro}  console=true

Abrir, buscar y cerrar navegador
    [Arguments]  ${browser}  ${url}
    [Tags]  browser  enlaces
    Open Browser  ${url}  ${browser}
    Maximize Browser Window
    Input Text  id:lst-ib  robotframework
    Click Button  name=btnK
    Click Link  xpath://a[contains(text(), 'Robot')]
    Close Browser

Accion que retorna un valor
    [Arguments]  ${parametro1}

    [Return]  Valor retornado ${parametro1}

Comprobar titulo
    [Arguments]  ${titulo esperado}
    Log  ${titulo esperado}

