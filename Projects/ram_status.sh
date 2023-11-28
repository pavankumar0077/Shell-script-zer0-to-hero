#!/bin/bash

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=800

if [[ $FREE_SPACE -lt $TH ]]
then
	echo "WARNING, RAM IS RUNNING LOW"
else
	echo "RAM SPACE IS SUFFICIENT - $FREE_SPACE M"
fi


# comannds
# free
# free -h
# free -mt
# free -mt | grep "Total"
# free -mt | grep "Total" | awk '{print $4}'LL
