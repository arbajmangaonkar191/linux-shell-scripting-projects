#!/bin/bash


disk_value=$(df -h / | awk 'NR==2{print $5}' | sed 's/%//')

if [[ $disk_value -le 85 ]]
then
	echo " Disk is under control and current disk is $disk_value"
else
	echo " Please display disk size $disk_value and take please take action"
fi
