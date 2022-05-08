#!/bin/bash

space=" "
command=$1$space$2$space$3$space$4$space$5

echo | $command  1> result.txt 2> result.txt