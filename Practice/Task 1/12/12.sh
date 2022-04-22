#!/bin/bash

counter=0
if [[ -n $1 ]]
then
    ((counter++))
fi

if [[ -n $2 ]]
then
    ((counter++))
fi

echo "$1 $2"
echo "Total arguments : $counter"