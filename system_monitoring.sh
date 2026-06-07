#!/bin/bash


echo " System Monitoring Deatils "

echo "---------------------------------------------------"
echo "--------------------------------------------------"
host_name=$(hostname)

echo " Current hostname is $host_name "
 
disk_value=$(df -h | awk 'NR==5{print $2}')
echo " Current Disk Value is $disk_value "


memory_value=$(free -h | awk 'NR==2{print $2}')

echo " Current Memory value is $memory_value "


Nginx_value=$(systemctl is-active nginx)

if [[ $Nginx_value == "active" ]]
then
	echo " Nginx Is Active "
else
	systemctl start nginx
	systemctl status nginx
fi

echo " Top 5 Process "

ps -aux --sort=-%mem,%cpu | head -n 5 

uptime_server=$(uptime)

echo " Server uptime is $uptime_server "
