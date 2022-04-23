#!/bin/bash

#The range of random numbers is from 0 to $1, not inclusive.
echo $(( $RANDOM % $1))