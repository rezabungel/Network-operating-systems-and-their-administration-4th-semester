#!/bin/bash

if [[ -f $1 ]]
then 
    echo "File "$1" exists."
else
    echo "Nofile "$1"."
fi