#!/bin/bash

set -x
# To access the arguments

# Exit if there are no arguments given
if [[ $# -eq 0 ]]
then
	echo "Please provide arguments to run the script"
	exit 1
fi


echo "First argument is $1"
echo "Second argument is $2"

# To access all the arguments 
echo "ALl the arguments are - $@"
echo "Number of arguments are - $#"

# For loop to access the values from arguments
for filename in $@
do
	echo "Copying file - $filename"
done
