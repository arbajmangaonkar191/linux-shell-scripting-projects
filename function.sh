#!/bin/bash



function create_user()
{
    read -p " Enter user " username
    username1=$(cat /etc/passwd | grep $username | awk -F: '{print $1}')
    if [[ $username == $username1 ]]
    then
    echo " User is already created "
else
	sudo useradd -m $username
    fi

}

function verify_user()
{
	if  getent passwd "$username" > /dev/null 
	then
		echo " User is Verify.. "
	else
		echo " User is not Verify... "
	fi
}

function show_memory()
{
  df -h | awk 'NR==5 {print $2}'

}
#create_user
#verify_user

