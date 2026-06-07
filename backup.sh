#!/bin/bash


source="/home/ec2-user/scripts"
destination="/home/ec2-user/backups"
FILENAME="$destination/backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"

echo " Saving Backup to file $FILENAME "
tar -cvzf "$FILENAME" "$source"

echo " Backup Created "
