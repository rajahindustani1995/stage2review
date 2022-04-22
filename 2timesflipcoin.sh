#!/bin/bash
declare -A coin
HH=0
HT=0
TH=0
TT=0
i=0
read -p " flip the coins : " c
while [[ $i -ne $c ]]
do
        flip1=$((RANDOM%2))
        flip2=$((RANDOM%2))
        if [[ $flip1 -eq 1 && $flip2 -eq 1 ]]
                then
                        echo "HH"
                        ((HH++))
                elif [[ $flip1 -eq 1 && $flip2 -eq 0 ]]
                        then
                        echo "HT"
                        ((HT++))
                elif [[ $flip1 -eq 0 && $flip2 -eq 1 ]]
            	then
            		echo "TH"
            		((TH++))
                else
                        echo "TT"
                        ((TT++))
        fi
        ((i++))
done
hh=${HH}
ht=${HT}
th=${TH}
tt=${TT}

thh=`echo $hh $c | awk '{print ($1/$2)*100}'`
echo HH : $thh"%" of the times

tht=`echo $ht $c | awk '{print ($1/$2)*100}'`
echo HT : $tht"%" of the times

tth=`echo $th $c | awk '{print ($1/$2)*100}'`
echo TH : $tth"%" of the times

ttt=`echo $tt $c | awk '{print ($1/$2)*100}'`
echo TT : $ttt"%" of the times

