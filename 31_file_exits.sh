#!/bin/bash

FILEPATH="/home/idrbt/Desktop/DevOps/shell-script/test.csv"

if [[ -f $FILEPATH ]]
then
	echo "File exist"
else
	echo "File not exist"
	exit 1
fi
