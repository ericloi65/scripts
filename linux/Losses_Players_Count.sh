#!/bin/sh

awk -F" " '{print $1,$2}' Roulette_Losses > Notes_Player_Analysis
grep -i 'Mylie Schmidt' Roulette_Losses >> Notes_Player_Analysis
grep -i 'Mylie Schmidt' Roulette_Losses |wc -l >> Notes_Player_Analysis
