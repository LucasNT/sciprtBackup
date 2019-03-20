#!/bin/bash

if [ $# -lt 1 ]; then
    echo $0 [FILES]
    exit 1
fi

data=$(date +"%Y_%m_%d_%H_%M_%S")

mkdir -p .backup

for i in $*; do

    qtd=(.backup/$i.*)


    if [ ${#qtd[@]} -ge 10 ]; then
        rm $qtd
    fi

    cp $1 .backup/$i.$data
done

