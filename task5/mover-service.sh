#!/usr/bin/env bash
while true;
do 
    if [ -n "$(ls -A ~/folder1 2>/dev/null)" ]; 
    then
        mv ~/folder1/* ~/folder2;
    fi
done
