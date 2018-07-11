*** Settings ***
Documentation  Setup y teardown común a todas las suites de tests
Resource  ../Resources/keywords.robot
Suite Setup  Inicio sistema
Suite Teardown  Finalizacion sistema
