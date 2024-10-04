*** Settings ***
Resource   ./main.resource


*** Keywords ***
Passo 1 - Acessar a página de login
    Go To    url=${urlBase}

Passo 2- Digitar um e-mail
  [Arguments]    ${email}
  Wait Until Element Is Visible    locator=${emailInput}
  Input Text                       locator=${emailInput}         text=${email}

Passo 3- Digitar uma senha
  [Arguments]    ${senha}

  Wait Until Element Is Visible      locator=${senhaInput}
   Input Password                    locator=${senhaInput}        password=${senha}

Passo 4- Clicar no botão entrar
   Wait Until Element Is Visible      locator=${botãoInput}
   Click Button                       locator=${botãoInput}        

Passo 5- Verificar se realmente entrou no sistema 
   Wait Until Page Contains    text=Logout
   Sleep   5 
Passo 6- Verificar mensagem de erro   
   [Arguments]    ${mensagem}  
   Wait Until Element Is Visible      locator=${Alert}     
   ${mensagem_real}=    Get Text    locator=${Alert}   
   Should Be Equal    ${mensagem_real}    ${mensagem}

#Login: sysadmin@qacoders.com
#Senha:1234@Test