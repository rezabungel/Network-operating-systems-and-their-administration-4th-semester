#!/bin/bash

echo -n "Enter any of seasons name: "
read seasons

case $seasons in 
    winter) 
        echo "Corrcert & my favourite one!"
    ;;

    spring) 
        echo "Corrcert!"
    ;;
    
    summer) 
        echo "Corrcert!"
    ;;

    autumn) 
        echo "Corrcert!"
    ;;
    
    *)
        echo "Incorrcert!"
    ;;
esac