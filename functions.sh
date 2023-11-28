#!/bin/bash

VAR="dasari"

function f1 {
    echo Hello from $FUNCNAME!
    VAR="Pavan"
    var="kumar"
}


f2() {
    p1=$2
    p2=$1
    sum=$((${p1}+${p2}))
    echo $p1
    echo $p2
    echo "==="
    echo "${sum}"
}

f1
echo ${VAR}
echo ${var}


mySum="$(f2 2 5)"
echo 
echo mySum = $mySum

mySub="$(f2 5 1)"
echo mySub = $mySub