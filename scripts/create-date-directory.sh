#!/bin/bash

prefix=$(pwd)/$(date +'%Y-%m-%d')
count=1
while true
do
    if [ -e ${prefix}-${count} ]; then 
        count=$(expr $count + 1)
    else 
        mkdir ${prefix}-${count}
        break
    fi
done
