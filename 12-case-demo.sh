#!/bin/bash

echo "Provide an option"
echo "a for print date"
echo "b for list of scripts"
echo "3 to check the current location"

read choice

case $choice in
	a) 
		echo "Today's date is:"
		date
		echo "Ending..."
		;;
	b) ls;;
	3) pwd;;
	*) echo "Please provide a valid input"
esac 
