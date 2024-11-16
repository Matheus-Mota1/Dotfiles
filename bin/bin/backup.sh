#!/bin/bash

# Path to the backup directory
backup_daily="/home/folclore/Storage/overmind-storage/backups/files"
logfile="/home/folclore/Storage/overmind-storage/backups/backup.log"

# To delete old backups removing the $ at the start
remove_files=$(find "${backup_daily}" -mtime +3 -type f -print -delete) >> "$logfile" 2>&1

# List of directorys or files to include
file_list=(
    /home/folclore/Math
    /home/folclore/Obsidian
    /home/folclore/Pictures
    /home/folclore/bin 
    /home/folclore/Downloads
    /home/folclore/Programming
    /home/folclore/Dotfiles
)

# Verify if the directories in file_list exist
for dir in "${file_list[@]}"
do
    if [ ! -d "$dir" ]; then
        echo -e "Error: the directory $dir doesn't exist." 2>&1 >> "$logfile"
        exit 1
    fi
done

# Create a tar file with the creation date in the name of the file
if tar -zcf "${backup_daily}/backup-$(date +"%d%m%Y").tar.gz" "${file_list[@]}" >> "$logfile" 2>&1
then
    echo -e "$(date):\tSucessfuly created a backup" >> "$logfile"
else
    echo -e "$(date):\tERROR creating a backup" >> "$logfile"
    exit 1
fi


if [ "$remove_files" == "" ]
then
    echo -e "$(date):\tList of removed files: No files older than 3 days" >> "$logfile"
else
    echo -e "$(date):\tList of removed files: $remove_files" >> "$logfile"
fi
