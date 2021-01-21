#!/bin/bash -x

Head=1;
Random_Check=$((RANDOM%2))
Num_Of_Flips=5

if [ $Random_Check -eq $Head ]
then
	echo " Flip coin is HEADS "
else
	echo " Flip coin is TAILS "
fi

while [[ $Num -le $Num_Of_Flips ]]
do
	Random_Check=$((RANDOM%2))

if [ $Random_Check -eq $Head ]
then
	Coin_Flip="H"
	Head_Count=$(( $Head_Count+1 ))
else
	Coin_Flip="T"
	Tail_Count=$(( $Tail_Count+1 ))
fi

	Singlet[$Num]=$Coin_Flip
	Num=$(( $Num+1 ))
	echo ${Singlet[@]}
done

	Head_Percent=$(echo | awk '{print '$Head_Count/$Num_Of_Flips*100'}')
	Tail_Percent=$(echo | awk '{print '$Tail_Count/$Num_Of_Flips*100'}')

Array_SINGLET=($Head_Percent $Tail_Percent)
echo ${Array_SINGLET[@]
