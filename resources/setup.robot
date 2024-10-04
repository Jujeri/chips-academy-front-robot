*** Settings ***
Resource    ./main.resource

*** Keywords ***
Abrir o navegador 
  Open Browser   browser=headlesschrome
  Maximize Browser Window
  
Fechar o navegador 
  Close All Browsers