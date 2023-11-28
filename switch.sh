#!/bin/bash

echo choose an option
echo
echo a=To see current date
echo b=List all the files in current working dir
read choice
case $choice in
        a) date ;;
        b) ls -ltra ;;
        *) echo Not a valid input
esac