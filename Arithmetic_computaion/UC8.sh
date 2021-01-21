#!/bin/bash -x

declare -A sorting

read -p "Enter the value  of a = " vara
read -p "Enter the value  of b = " varb
read -p "Enter the value  of c = " varc

echo $vara
echo $varb
echo $varc

exp1=$(($vara+$varb*$varc))
   echo " a+b*c = " $exp1

exp2=$(($vara*$varb+$varc))
   echo " a*b+c = " $exp2

exp3=$(($varc+$vara/$varb))
   echo " a+b/c = " $exp3

exp4=$(($vara%$varb+$varc))
   echo " a%b+c = " $exp4


sorting=([0]=$exp1 [1]=$exp2 [2]=$exp3 [3]=$exp4)

echo "${sorting[@]}"

for values in $sorting
do
   echo "${sorting[@]}"
done

## Sorting in Descending order

echo "${sorting[@]}"

for (( i = 0; i < ${#sorting[@]}; i++ ))
do
	for (( j = 0; j < ${#sorting[@]}; j++ )) 
	do
		if [[ ${sorting[$j]} -lt ${sorting[$i]} ]]
		then
			temp=${sorting[$i]}
			sorting[$i]=${sorting[$j]}
			sorting[$j]=${temp}
		fi
	done
done

echo "Sorted numbers in Decending order"
for n in "${sorting[@]}"
do
	echo "$n"
done
