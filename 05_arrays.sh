#!/bin/bash

# Array
myArray=(1 9 Pavan 90.4 Kumar "Pavan Kumar Dasari")

echo "Value in 5th index ${myArray[5]}"
echo "All the values in array are ${myArray[*]}"

# How to find no. of values in array,  Length of Array
echo "No. of values, Lenth of an array is ${#myArray[*]}"

# How to get specific values ?
# 2nd index is started and next 2nd is how many values needed after the 2nd index
echo "Values from index 2-3 ${myArray[*]:2:3}"

# Updating the array with new values
myArray+=(test 8)

echo "Values of new array are ${myArray[*]}"
