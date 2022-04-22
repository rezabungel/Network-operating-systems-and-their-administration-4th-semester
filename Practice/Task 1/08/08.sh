#!/bin/bash

echo -n "Enter login: "
read login

echo -n "Enter password: "
read password

if [[ $login = admin ]] && [[ $password = 123456 ]]
then 
    echo "Success auth!"
else 
    echo "Auth failed!"
fi
