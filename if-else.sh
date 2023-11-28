#!/bin/bash

echo Enter your age 
read age

if [ $age -ge 18 ]
then
    echo eligible for vote !!
else    
    echo not eligible for vote
fi