#!/bin/bash


if ! [ -d ./script_sample_folder ]; then
    echo "The folder 'script_sample_folder' doesn't exist"
    exit 1
fi


for path in ./script_sample_folder/*; do
    if [ -d "$path" ]; then
        dirname=$(basename "$path")
        new_dirname="$1-$dirname"
        mv "$path" "./script_sample_folder/$new_dirname"
        echo "Renomeado '$dirname' para '$new_dirname'"
    fi
done 
