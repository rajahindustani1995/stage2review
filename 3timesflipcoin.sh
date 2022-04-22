#!/bin/bash
declare -A coin
HHH=0
HHT=0
HTH=0
THH=0
TTH=0
THT=0
HTT=0
TTT=0
i=0
read -p "flip the coins : " c
while [[ $i -ne $c ]]
do
        flip1=$((RANDOM%2))
        flip2=$((RANDOM%2))
	flip3=$((RANDOM%2))

        if [[ $flip1 -eq 1 && $flip2 -eq 1 && $flip3 -eq 1 ]]
		then
			echo "HHH"
                	((HHH++))
                elif [[ $flip1 -eq 1 && $flip2 -eq 1 && $flip3 -eq 0 ]]
                        then
                        echo "HHT"
                        ((HHT++))
                elif [[ $flip1 -eq 1 && $flip2 -eq 0 && $flip3 -eq 1 ]]
                        then
                        echo "HTH"
                        ((HTH++))
		elif [[ $flip1 -eq 0 && $flip2 -eq 1 && $flip3 -eq 1 ]]
                        then
                        echo "THH"
                        ((THH++))
		elif [[ $flip1 -eq 0 && $flip2 -eq 0 && $flip3 -eq 1 ]]
                        then
                        echo "TTH"
                        ((TTH++))
		elif [[ $flip1 -eq 0 && $flip2 -eq 1 && $flip3 -eq 0 ]]
                        then
                        echo "THT"
                        ((THT++))
		elif [[ $flip1 -eq 1 && $flip2 -eq 0 && $flip3 -eq 0 ]]
                        then
                        echo "HTT"
                        ((HTT++))
		else
                        echo "TTT"
			((TTT++))

        fi
        ((i++))
done
hhh=${HHH}
hht=${HHT}
hth=${HTH}
thh=${THH}
tth=${TTH}
tht=${THT}
htt=${HTT}
ttt=${TTT}

a=`echo $hhh $c | awk '{print ($1/$2)*100}'`
echo HH : $a"%" of the times

b=`echo $hht $c | awk '{print ($1/$2)*100}'`
echo HT : $b"%" of the times

p=`echo $hth $c | awk '{print ($1/$2)*100}'`
echo TH : $p"%" of the times

d=`echo $thh $c | awk '{print ($1/$2)*100}'`
echo TT : $d"%" of the times

e=`echo $tth $c | awk '{print ($1/$2)*100}'`
echo HH : $e"%" of the times

f=`echo $tht $c | awk '{print ($1/$2)*100}'`
echo HT : $f"%" of the times

g=`echo $htt $c | awk '{print ($1/$2)*100}'`
echo TH : $g"%" of the times

h=`echo $ttt $c | awk '{print ($1/$2)*100}'`
echo TT : $h"%" of the times

