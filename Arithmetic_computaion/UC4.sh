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
