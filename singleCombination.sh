#!/bin/bash -x

declare -A store_coin

for (( i=1;i<10;i++ ))
do
	if [ $((RANDOM%2)) -eq 1 ]
	then
			store_coin[$i]="Heads"
	else
   	    store_coin[$i]="Tails"
	fi
done

echo "${store_coin[@]}"
