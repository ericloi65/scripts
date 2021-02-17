#!/bin/sh

echo "                          " 

echo -e "Enter Date (MMDD)  : \c"
read Date

echo -e "Enter Time 00:00:00: \c"
read Time

echo -e "Enter AM/PM        : \c"
read AMPM

Extension="_Dealer_schedule"

Filename="$Date$Extension"


echo "                          "

grep -E $Time.*$AMPM $Filename > temp_file

awk -F" " '{print $1,$2,$5,$6}' temp_file

