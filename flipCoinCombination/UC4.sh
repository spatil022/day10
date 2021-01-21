#!/bin/bash

declare -A coin
	echo "${coin[@]}"

read -p "Enter number of coin flips: " iter

temp=$iter
heads='H'
tails='T'
headCount=0
tailCount=0
coin['Singlet']=''
while [[ $temp -gt 0 ]]; do
	toss=$((RANDOM%2))
	if [[ $toss -eq 0 ]]; then
		coin['Singlet']+='H'
		headCount=$((headCount+1))
	else 
		coin['Singlet']+='T'
		tailCount=$((tailCount+1))
	fi
	((temp--))
done

echo "Tossesc: ${coin[@]}"
echo "-----------Singlet Combination-----------"
echo "H count: $headCount"
echo "T count: $tailCount"
headPer=$headCount*100/$iter
echo "H % : $headPer%"
tailPer=$tailCount*100/$iter
echo "T % : $tailPer%"

# Doublet Combiation
echo "-----------Doublet Combination-----------"
HH=0
TT=0
HT=0
TH=0
if [[ $iter%2 -eq 0 ]]; then
	for (( i = 0; i <= $iter-2; i=i+2 )); do
		comb=${coin[Singlet]:$i:2}
		if [[ $comb -eq 'HH' ]]; then
			HH=$((HH+1))
		elif [[ $comb -eq 'HT' ]]; then
			HT=$((HT+1))
		elif [[ $comb -eq 'TH' ]]; then
			TH=$((TH+1))
		else
			TT=$((TT+1))
		fi
	done
	echo "HH count: $HH"
	echo "TT count: $TT"
	echo "HT count: $HT"
	echo "TH count: $TH"
	hhPer=$HH*200/$iter
	echo "HH % : $hhPer%"
	ttPer=$TT*200/$iter
	echo "TT % : $ttPer%"
	htPer=$HT*200/$iter
	echo "HT % : $htPer%"
	thPer=$TH*200/$iter
	echo "TH % : $thPer%"
else
	echo "Doublet not possible, Enter coin flip is not divisible by 2."
fi

# Triplet Combiation
echo "-----------Triplet Combination-----------"
HHH=0
HHT=0
HTH=0
HTT=0
THH=0
THT=0
TTH=0
TTT=0
if [[ $iter%3 -eq 0 ]]; then
	for (( i = 0; i <= $iter-3; i=i+3 )); do
		comb=${coin[Singlet]:$i:3}
		if [[ $comb -eq 'HHH' ]]; then
			HHH=$((HHH+1))
		elif [[ $comb -eq 'HHT' ]]; then
			HHT=$((HHT+1))
		elif [[ $comb -eq 'HTH' ]]; then
			HTH=$((HTH+1))
		elif [[ $comb -eq 'HTT' ]]; then
			HTT=$((HTT+1))
		elif [[ $comb -eq 'THH' ]]; then
			THH=$((THH+1))
		elif [[ $comb -eq 'THT' ]]; then
			THT=$((THT+1))
		elif [[ $comb -eq 'TTH' ]]; then
			TTH=$((TTH+1))
		else
			TTT=$((TTT+1))
		fi
	done
	echo "HHH count: $HHH"
	echo "HHT count: $HHT"
	echo "HTH count: $HTH"
	echo "HTT count: $HTT"
	echo "THH count: $THH"
	echo "THT count: $THT"
	echo "TTH count: $TTH"
	echo "TTT count: $TTT"
	hhhPer=$HHH*300/$iter
	echo "HHH % : $hhhPer%"
	hhtPer=$HHT*300/$iter
	echo "HHT % : $hhtPer%"
	hthPer=$HTH*300/$iter
	echo "HTH % : $hthPer%"
	httPer=$HTT*300/$iter
	echo "HTT % : $httPer%"
	thhPer=$THH*300/$iter
	echo "THH % : $thhPer%"
	thtPer=$THT*300/$iter
	echo "THT % : $thtPer%"
	tthPer=$TTH*300/$iter
	echo "TTH % : $tthPer%"
	tttPer=$TTT*300/$iter
	echo "TTT % : $tttPer%"
else
	echo "Doublet not possible, Enter coin flip is not divisible by 3."
fi
