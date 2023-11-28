#!/bin/bash


# AND OPERATOR

read -p "What is your age : " age
read -p "Your nationality : " country
country=${country^^}

#if [[ $age -ge 18 ]] && [[ $country == "INDIA" ]]
if [[ $age -ge 18 ]] || [[ $country == "INDIA" ]]
then
	echo "You can vote"
else
	echo "You can't vote"
fi


