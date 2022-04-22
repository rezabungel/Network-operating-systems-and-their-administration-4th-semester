#!/bin/bash

read var

if [[ -z $var ]]
then 
    echo "Empty input!"
else
    echo "Input is: $var"
fi