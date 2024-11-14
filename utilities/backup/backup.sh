#!/bin/bash

# Caminho do diretório de backup diário
backup_daily="/home/folclore/Archive/Backup/daily"

# Lista de diretórios para incluir no backup
file_list=(
    /home/folclore/Math
    /home/folclore/obsidian-git-sync
    /home/folclore/Pictures
    /home/folclore/bin
    /home/folclore/Downloads
    /home/folclore/Programming
    /home/folclore/Dotfiles
)

# Verifica se os diretórios no file_list existem
for dir in "${file_list[@]}"; do
    if [ ! -d "$dir" ]; then
        echo "Erro: O diretório $dir não existe."
        exit 1
    fi
done

# Cria um arquivo tar.gz com a data atual no nome
tar -zcf "${backup_daily}/backup-$(date +%Y%m%d).tar.gz" "${file_list[@]}"

# Exclui arquivos no diretório daily com mais de 7 dias
find "${backup_daily}" -mtime +7 -type f -delete

