#!/bin/bash

#our program goal is to install mysql

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

#this function should validate the previous command and inform user whether its success or failure
VALIDATE(){
    #$1--->it will receive the argument1
    if [ $1 -ne 0 ]
    then    
        echo "$2 ... $R FAILURE $N"
        exit 1
    else 
        echo "$2 ... $G SUCCESS $N"
    fi
}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: Please run this script with root access"
    exit 1
# else    
#   echo "INFO:: You are root user"
fi

yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installing MYSQL"


yum install postfix -y &>>$LOGFILE

VALIDATE $? "Installing Postfix"


