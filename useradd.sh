#!/bin/bash

for i in {1..5}
do
	read -p " Enter a username " username
	sudo useradd $username
done
