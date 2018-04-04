#!/bin/bash

FILE=$1


if [ $(ls "$FILE" | awk '/.java$/') ]; then
    awk '$1 ~ /public|private/ && $0 ~ /[){]$/' $FILE > declarations.tmp
    cat declarations.tmp
    while read line; do
        ARGS=$( echo $line | cut -d '(' -f 2 | cut -d ')' -f 1 )
        echo $ARGS
        #ARGStr=$( echo $ARGS | tr ',' '\n' )
        echo $line line
    done < declarations.tmp
    

fi
