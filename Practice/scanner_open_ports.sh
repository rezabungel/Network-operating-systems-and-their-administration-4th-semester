#!/bin/bash 

read -p "Ports range from 0 to " ports
echo "Start scanning ports"

#for (( i=1 ; i<255 ; i++))
#do
#	 for (( PORT=0 ; PORT<=$ports ; PORT++ ))
#        do
#		 timeout 1 bash -c "</dev/tcp/192.168.64.$i/$PORT &>/dev/null" && echo "Port $PORT is with ip 192.168.64.$i"
#	 done
#done

for (( PORT=0 ; PORT<=$ports ; PORT++ ))
do
	echo
	timeout 1 bash -c "</dev/tcp/192.168.64.7/$PORT &>/dev/null" && echo "Port $PORT is open with ip 192.168.64.7"
done

echo
echo "Finish scanning ports"
