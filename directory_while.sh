#!/bin/bash

i=1

while [ $i -le 10 ];
do
	mkdir day-$i
	i=$(($i+1))
done
