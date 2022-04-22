#!/bin/bash

echo -n "Enter any of seasons name: "
read seasons

if [[ $seasons = winter ]] || [[ $seasons = spring ]] || [[ $seasons = summer ]] || [[ $seasons = autumn ]]
then 
    echo "Corrcert!"
else 
    echo "Incorrcert!"
fi
