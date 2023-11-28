#!/bin/bash

myVar="PavanKumar"

myVarLength=${#myVar}
echo "Length of my vaar is $myVarLength"

echo "Upper case is --  ${myVar^^}"
echo "Lower case is --  ${myVar,,}"


# To replace a String

newVar=${myVar/Kumar/Dasari}

echo "New Var is -------- ${newVar}"

# To SLice a String

echo "After slice ---  ${myVar:5:10}"
