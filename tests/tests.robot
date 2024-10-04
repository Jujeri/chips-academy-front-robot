*** Settings ***
Resource        ../resources/setup.robot
Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador

*** Test Cases ***
Cenário teste: login de administrador com sucesso
    Passo 1- Acessar a página de login
    Passo 2- Digitar um e-Mail  ${emailValido}
    Passo 3- Digitar uma senha   ${senha Valido}
    Passo 4- Clicar no botão entrar
    

Cenário teste: login com e-mail invalido
    Passo 1- Acessar a página de login
    Passo 2- Digitar um e-Mail   teste@juliana 
    Passo 3- Digitar uma senha   ${senha Valido}
    Passo 4- Clicar no botão entrar
    Passo 6- Verificar mensagem de erro  E-mail ou senha informados são inválidos.

Cenário teste: login com senha invalida 
    Passo 1- Acessar a página de login
    Passo 2- Digitar um e-Mail  ${emailValido}
    Passo 3- Digitar uma senha   teste1230
    Passo 4- Clicar no botão entrar
    Passo 6- Verificar mensagem de erro  E-mail ou senha informados são inválidos.




 

 #Resultado esperado: o usuário com perfil administradr é logado com sucesso