#!/bin/sh


#grep -i - 0310_win_loss_player_data | awk -F" " '{print $1,$2,$3}' > Notes_Player_Analysis
#grep -i - 0312_win_loss_player_data | awk -F" " '{print $1,$2,$3}' >> Notes_Player_Analysis
#grep -i - 0315_win_loss_player_data | awk -F" " '{print $1,$2,$3}' >> Notes_Player_Analysis

grep -i - 0* | awk -F" " '{print $1,$2,$3}' > Notes_Player_Analysis

grep -i - 0* | grep -i 'Mylie Schmidt' >> Notes_Player_Analysis

grep -i - 0* | grep -i 'Mylie Schmidt' | wc -l >> Notes_Player_Analysis 

