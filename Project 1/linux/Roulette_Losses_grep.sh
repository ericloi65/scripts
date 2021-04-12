#!/bi/sh

grep -i - 0310_win_loss_player_data | awk -F" " '{print "0310",$1,$2,$3}' > Roulette_Losses
grep -i - 0312_win_loss_player_data | awk -F" " '{print "0312",$1,$2,$3}' >> Roulette_Losses
grep -i - 0315_win_loss_player_data | awk -F" " '{print "0315",$1,$2,$3}' >> Roulette_Losses

#grep -i - 0* | awk -F" " '{print $1,$2,$3}' >> Roulette_Losses
