#!/bin/bash

# Getting values form a file ip.txt

FILE="/home/idrbt/Desktop/DevOps/shell-script/ip.txt"
#FILE=*

for ip in $(cat $FILE)
do
	echo "IP is : $ip"
done
