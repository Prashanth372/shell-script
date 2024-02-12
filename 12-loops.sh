#!/bin/bash

#all args are in $@

for i in $@
do 
    yum install $i -y
done

#improvement
#implement log files
#implement validations
#implement validations through functions
#your script should check package is already installed or not, if already installed print in yellow colour
#if installed just print package is already installed,it should not run install command
