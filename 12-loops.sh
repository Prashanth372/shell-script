#!/bin/bash
DATE=$(date +%F)
LOGSDIR=/home/centos/shellscript-logs
# /home/centos/shellscript-logs/script-name-date.log
LOGFILE=$LOGSDIR/$0-$DATE.log
SCRIPT_NAME=$0
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
if [ $USERID -ne 0 ]
then    
    echo -e "$R ERROR:: Please run this scirpt with root access $N"
    exit 1
fi

VALIDATE(){
    if[ $1 -ne 0 ]
    then
        echo -e "Installing $2 ... $R FAILURE $N"
        exit 1
    else
        echo -e "Installing $2 ... $G SUCCESS $N"
    fi
}    



#all args are in $@

for i in $@
do 
    yum list installed $i &>>$LOGFILE
    if [ $? -ne 0 ]
    then    
        echo "$i is not installed, lets install it"
        yum install $i -y &>>$LOGFILE
        VALIDATE $? "$i"
    else
        echo "$Y $i is already installed $N"
    fi

    #yum install $i -y
done

# improvement
# implement log files
# implement validations
# implement validations through functions
# your script should check package is already installed or not, if already installed print in yellow colour
# if installed just print package is already installed,it should not run install command
