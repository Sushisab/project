#!/bin/bash

# Criar .txt
# O script deve ser capaz de:
# - Criar um arquivo .txt em cada repositório de script_sample_folder;
# - Cada arquivo .txt deve ter nome igual a "script_sample_folder-<nome do folder>".


if ! [ -d ./script_sample_folder ]; then
    echo "The folder 'script_sample_folder' doesn't exist"
    exit 1
fi


for path in ./script_sample_folder/*; do
    echo $path 
    suffix="${path: -2}"
    echo $suffix
    filename="$path/script_sample_folder-$suffix.txt"
    echo $filename
    if ! [ -f $filename ]; then
        echo $filename > $filename 
    fi
 done