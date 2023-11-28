#!/bin/bash

read -p "Enter your marks :" marks

if [[ $marks -ge 80 ]]
then
	echo "FIRST"
elif [[ $marks -ge 60 ]]
then
	echo "SECOND"
elif [[ $marks -ge 40 ]]
then
	echo "THIRD"
else [[ $marks -lt 40 ]]
	echo "FAIL"
fi


