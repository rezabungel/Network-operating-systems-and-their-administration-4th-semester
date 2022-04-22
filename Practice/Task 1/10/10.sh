#!/bin/bash

echo -n "Enter any of seasons name: "
read seasons

if [[ $seasons = winter ]]
then 
    echo "Corrcert & my favourite one!"
elif [[ $seasons = spring ]]
then
    echo "Corrcert!"
elif [[ $seasons = summer ]]
then    
    echo "Corrcert!"
elif [[ $seasons = autumn ]]
then    
    echo "Corrcert!"
else 
    echo "Incorrcert!"
fi