#!/bin/bash
gambler=100
win=0
lose=0

while [[ $gambler -ne 0 && $gambler -ne 200 ]]
do
        bet=$((RANDOM%2));
        if [[ $bet -eq 1 ]]
                then
                        ((win++));
                       
			((gambler++));
		else
                        ((lose++));
                        
			((gambler--));
        fi
done

echo "Total win :" $win

echo "Total losses :" $lose

if [[ $gambler -eq 200 ]]
        then
                echo "He reaches to the goal : Rs $gambler"
        else
                echo "He loses every money : Rs $gambler"
fi
