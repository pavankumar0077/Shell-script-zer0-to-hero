#!/bin/bash

read -p "Enter your marks :" marks

if [[ $marks -gt 40 ]]
then
	echo "You are PASSED"
else
	echo "You are FAILED"
fi
