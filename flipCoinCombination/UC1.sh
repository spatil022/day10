#!/bin/bash -x

Head=1;
Flip_Check=$((RANDOM%2))
Num_Of_Flips=5
if [ $Flip_Check -eq $Head ]
then
	echo " Flip coin is HEADS "
else
	echo " Flip coin is TAILS "
fi
