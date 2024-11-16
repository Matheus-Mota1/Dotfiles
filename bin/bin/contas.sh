#!/bin/bash

# Caminho para o diretório do seu projeto
path="/home/folclore/Programming/Python/Scrap-Contas"

# Alterar para o diretório do projeto
cd "$path" || exit

# Ativar o ambiente virtual
source .venv/bin/activate

# Executar o script Python
python main.py

