#!/bin/bash

#1 Get all the users
#2 Loop through all users
#3 Prompt the adminstrator if they should have this user on the system
#4 If yes delete, if no dont

# awk -F '($3>1000)&&($1!="nobody"){print $1}' /etc/passwd

# read: read -p "enter age" age


sudo awk -F '($3>1000)&&($1!="nobody"){print $1}' /etc/passwd > user.txt

for line in $(cat "user.txt"); do
    read -p "is $line suppose to be on this system" response
    if [ "$response" == "y"]; then
        echo "DELETE"
    fi
done
