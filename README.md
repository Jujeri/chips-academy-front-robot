### Robot Api ###
 
## Ferramentas utilizadas ##
Robot Framework
 
## Bibliotecas utilizadas ##
Library     RequestsLibrary
Library     Collections
Library     String
Library     FakerLibrary    locale=pt_BR  
 
## Pré-Requisitos ##
Certifique-se de ter o Python instalado em sua máquina. Você pode baixá-lo (https://python.org/downloads/).
Tenha uma IDE instalada (por exemplo, VS Code).
 
## Instalando o Robot Framework e Bibliotecas Relacionadas ##
Você pode instalar o Robot Framework e as bibliotecas necessárias executando os seguintes comandos no terminal ou prompt de comando:
pip install --upgrade robotframework
pip install --upgrade robotframework-faker
 
## Estensões Vscode ##
Robot Framework Formatter 
Robot Framework Language Server
Robot Snippets
Vscode-icons
 
## Como executar ##
```bash
robot -d ./logs <nome_arquivo.robot>
```