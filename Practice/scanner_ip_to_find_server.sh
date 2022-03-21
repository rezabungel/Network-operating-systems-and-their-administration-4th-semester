#!/bin/bash 

echo "Scanner ip to find server"

for (( i=1 ; i<255 ; i++))
do
	echo
	wget 192.168.64.$i
done

echo "Finish"
