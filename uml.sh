#!/bin/bash

FILE=$1

if [ $(ls "$FILE" | awk '/.java$/') ]; then
    echo ---------------------------------
    awk '$1 ~ /public|private/ && $0 ~ /[){]$/' $FILE
fi
