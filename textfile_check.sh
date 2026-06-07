#!/bin/bash

count=1
for file in *.txt
do
	echo "$count-$file"
	((count++))
done
