#!/bin/bash

#check if the number is > 10 or not

NUMBER=$1

if
 [ $NUMBER -gt 10 ]
 then   
    echo " $NUMBER is >10"
else
    echo "$NUMBER is not >10"
fi
