#!/bin/bash

read -p "Which site or ip you want to check?" site

ping -c 3 $site &> /dev/null
#sleep 5s


if [[ $? -eq 0 ]]
then
	echo "Successfully connected to $site"
else
	echo "Unable to connect $site"
fi
