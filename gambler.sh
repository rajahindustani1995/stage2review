#!/bin/bash
gambler=100
won=0
lose=0

while [[ $gambler -ne 0 && $gambler -ne 200 ]]
do
        bet=$((RANDOM%2));
        if [[ $gambler -eq 1 ]]
                then
                        ((won+1));
                        ((gambler+1));
		else
                        ((lose+1));
                        ((gambler-1));
        fi
done

echo "Total win : $won"

echo "Total losses : $lose"
