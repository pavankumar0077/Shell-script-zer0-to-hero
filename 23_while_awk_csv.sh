#!/bin/bash

cat test.csv | awk 'NR!=1 {print}' | while IFS="," read id name age
do
	echo "Name is : $name"
done
