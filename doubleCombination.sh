#!/bin/bash -x

counter=0
declare -A store_comb
array[ counter++ ]=1
array[ counter++ ]=0

count=0

for (( i=0;i<2;i++ ))
do
	for (( j=0;j<2;j++ ))
	do
		#if [ $i -ne $j ] && [ $j -ne $i ]
		#then
				store_array[ count++ ]="${array[i]}""${array[j]}"
		#fi
	done
done

for (( k=0;k<=3;k++ ))
do
	store_comb[$k]="${store_array[k]}"
done

echo ${store_comb[@]}
