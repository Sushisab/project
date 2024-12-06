#!/bin/bash
#Deletar diretórios
#O script deve ser capaz de:
#- Deletar diretórios de script_sample_folder;
#- Receber um argumento booleano de quem evoca o script;
#- Caso o argumento booleano seja passado, deletar todos os diretórios de script_sample_folder;
#- Caso o argumento booleano não seja passado, deletar somente aqueles diretórios que têm conteúdo dentro.

if ! [ -d ./script_sample_folder ]; then
    echo "The folder 'script_sample_folder' doesn't exist"
    exit 1
fi

delete_all=false
if [ "$1" == "true" ]
    delete_all=true
fi

delete_non_empty_directories() {
    for dir in ./script_sample_folder/*; do
        if [ -d "$dir" ] and [ "$(ls -A "$dir")"]; then 
        echo "Non-Empty directory will be deleted: $dir"
        rm -rf "$dir" 
        fi
    done
}

delete_all_directories() {
    for dir in ./script_sample_folder/*; do 
        if [ -d "$dir" ]; then 
            echo "Deleting directory: $dir"
            rm -rf "$dir"
        fi
    done
}



