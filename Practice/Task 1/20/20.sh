#!/bin/bash

echo -n "Enter directory name : "
read nameDir

if [[ -d "$nameDir" ]]
then 
    echo "Directory exists."
else 
    mkdir "$nameDir"
    echo "Directory created."
fi