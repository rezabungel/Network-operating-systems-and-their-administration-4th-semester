#!/bin/bash

echo -n "Enter the number : "
read number

if [[ $(( number % 2)) -eq 0 ]]
then 
    echo "It is a Even number"
else 
    echo "It is a Odd number"
fi