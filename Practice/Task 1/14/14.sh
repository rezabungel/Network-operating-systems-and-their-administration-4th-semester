#!/bin/bash

function Sum {
    echo $(( $1 + $2 ))
} 

echo -n "Enter first number : "
read first
echo -n "Enter second number : "
read second
result=$( Sum $first $second)
echo "Sum is : $result"