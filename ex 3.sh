#!/bin/bash

#Deletar conteúdo
#O script deve ser capaz de:
#- Deletar todo o conteúdo de um determinada diretório de script_sample_folder;
#- Receber um caracter qualquer como argumento de quem evoca o script;
#- Aplicar a deleção de conteúdo somente em diretórios de script_sample_folder que contenham o dado caracter.

if ! [ -d ./script_sample_folder ]; then
    echo "A pasta 'script_sample_folder' não existe"
    exit 1
fi

if []