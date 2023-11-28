#!/bin/bash

echo "-------------------- STARTING TRACE -------------------------"

traceroute 8.8.8.8

echo "-------------------- TRACE ROUTE FOUND ----------------------"

echo $#
#name1 = "Pavan"
#name2 = "Kumar"
m=5
n=5

if [ $1 -eq $2 ]
	then
		echo "SAME"
	else
		echo "DIFFERENT"
fi
