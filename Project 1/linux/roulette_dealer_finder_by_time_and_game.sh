#!/bin/bash
echo    "                       "
echo -e "Enter Time 00:00:00: \c"
read Time
echo -e "Enter AM/PM        : \c"
read AMPM
echo -e "Enter Date (MMDD)  : \c"
read Date
echo -e "Enter Game BJ/RL/TH: \c"
read Game
echo    "                       "

Extension="_Dealer_schedule"

FileName="$Date$Extension"

grep -E  $Time.*$AMPM $FileName  > temp_file

case $Game in
     BJ)
     awk -F" " '{print "Dealer is ", $3, $4}' temp_file
     ;;
     RL)
     awk -F" " '{print "Dealer is ", $5, $6}' temp_file
     ;;
     TH)
     awk -F" " '{print "Dealer is ", $7, $8}' temp_file
     ;;
     *)
     echo  Wrong agrument entered!
     ;;
esac




#If [$Game='BJ']
#then
#    echo 'BJ'
#    awk -F" " '{print $1, $2, $3, $4}' temp_file 
#fi

#if [$Game='RL']
#then
#    echo 'RL'
#    awk -F" " '{print $1, $2, $5, $6}' temp_file 
#fi

#if [$Game='TH']
#then
#    echo 'TH'
#    awk -F" " '{print $1, $2, $7, $8}' temp_file
#fi

# awk -F" " '{
#            if ($Game = "BJ")
#            then
#                print $1, $2, $3, $4
#            else
#                if ($Game = "RL")
#                then
#                    print $1, $2, $5, $6
#                else
#                    if ($Game = "TH")
#                    then
#                        print $1, $2, $7, $8
#           }' temp_file

