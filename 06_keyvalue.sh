#!/bin/bash

# How to store the key values pairts

declare -A myArray
myArray=([name]=Pavan [age]=25 [city]=Hyd)

echo "Name is ${myArray[name]}"
echo "City is ${myArray[city]}"

