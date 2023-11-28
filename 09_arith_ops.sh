#!/bin/bash

# Maths Calculations

X=10
Y=2

let mul=$X*$Y
echo "$mul"

let sum=$X+$Y
echo "$sum"

# Other way to calculate
echo "sub is $(($X-$Y))"
