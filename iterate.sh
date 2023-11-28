#!/bin/bash

names="/home/idrbt/Desktop/DevOps/shell-script/sample-names.txt"

for name in $(cat $names)
do
    echo $name
done