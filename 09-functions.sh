#!/bin/bash

#our program goal is to install mysql

DATE=$(date +%F-%H-%M-%S)

USERID=$(id -u)
#this function should validate the previous command and inform user whether its success or failure
VALIDATE(){
    #$1--->it will receive the argument1
    if [ $1 -ne 0 ]
    then    
        echo "$2 ... FAILURE"
        exit 1
    else 
        echo "$2 ... SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: Please run this script with root access"
    exit 1
# else    
#   echo "INFO:: You are root user"
fi

yum install mysql -y

VALIDATE $? "Installing MYSQL"


yum install postfix -y

VALIDATE $? "Installing Postfix"


