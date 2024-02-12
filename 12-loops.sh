#!/bin/bash

USERID=$(id -u)
R="\e[31m"
N="\e[0m"
if [ $USERID -ne 0 ]
then    
    echo -e "$R ERROR:: Please run this scirpt with root access $N"
    exit 1
fi


#all args are in $@

for i in $@
do 
    yum install $i -y
done

# improvement
# implement log files
# implement validations
# implement validations through functions
# your script should check package is already installed or not, if already installed print in yellow colour
# if installed just print package is already installed,it should not run install command
