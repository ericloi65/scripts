#!/bin/sh

grep -i '0310'.*('AM'\| "Roulette_Losses" | awk -F" " '{print $1,$2,"  Roulette Dealer: "$5,$6}
