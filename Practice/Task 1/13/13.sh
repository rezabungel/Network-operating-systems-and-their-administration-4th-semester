#!/bin/bash

for (( i=1 ; i < 11 ; i++ ))
do 
    ((res= 2 * $i ))
    echo "2 * $i = $res"
done