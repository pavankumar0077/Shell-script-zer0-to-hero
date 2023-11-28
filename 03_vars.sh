#!/bin/bash

# Script to show how to use variables

a=10
name="Pavan"
age=1

echo "My name is $name and age is $age"

name="Kumar"

echo "My name is $name and age is $age"

# Var to store tho output of a command
HOSTNAME=$(hostname)
echo "Name of this machine is $HOSTNAME"
DIR=$(ls -lrta)
echo "Dir present in thie location is $DIR"
