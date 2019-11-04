#!/bin/bash

if [ $# -lt 1 ]; then
    echo $0 [FILES]
    exit 1
fi

# store the actual date
data=$(date +"%Y_%m_%d_%H_%M_%S")

mkdir -p .backup

# iterate through all files passed as argument
for i in $*; do

    #get a list of backups of the file $i
    qtd=(.backup/$i.*)


    #if the folder have more than 10 backups delete the oldest backup
    if [ ${#qtd[@]} -ge 10 ]; then
        rm -rf $qtd
    fi

    # make the backup
    cp -r $1 .backup/$i.$data
done

