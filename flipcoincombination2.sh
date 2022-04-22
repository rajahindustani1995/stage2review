#!/bin/bash
declare -A coin
Heads=0
Tails=0
i=0
read -p "flip the coin : " c
while [[ $i -ne $c ]]
do
        coin1=$((RANDOM%2))
	coin2=$((RANDOM%2))
        if [[ $coin1 -eq 1 & $coin2  ]]
                then
                        echo "Heads"
                        ((Heads++))
                else
                        echo "Tails"
                        ((Tails++))
        fi
        ((i++))
done
a=${Heads}
b=${Tails}
H=`echo $a $c | awk '{print ($1/$2)*100}'`
T=`echo $b $c | awk '{print ($1/$2)*100}'`
echo Heads : $H"%" of the times
echo Tails : $T"%" of the times
