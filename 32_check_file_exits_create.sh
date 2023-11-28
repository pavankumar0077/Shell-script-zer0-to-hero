#!/bin/bash

FILEPATH="/home/idrbt/Desktop/DevOps/shell-script/test1.csv"

if [[ -f $FILEPATH ]]
then
	echo "File exist"
else
	echo "Creating file now"
	touch $FILEPATH
fi
