#!/bin/bash

#Losses on 0310

grep -E "05:00:00".*"AM" 0310_Dealer_schedule | awk -F" " '{print "0310", $1, $2, $5, $6}' >  Dealer_working_during_losses 
grep -E "08:00:00".*"AM" 0310_Dealer_schedule | awk -F" " '{print "0310", $1, $2, $5, $6}' >> Dealer_working_during_losses
grep -E "02:00:00".*"PM" 0310_Dealer_schedule | awk -F" " '{print "0310", $1, $2, $5, $6}' >> Dealer_working_during_losses
grep -E "02:00:00".*"PM" 0310_Dealer_schedule | awk -F" " '{print "0310", $1, $2, $5, $6}' >> Dealer_working_during_losses
grep -E "11:00:00".*"PM" 0310_Dealer_schedule | awk -F" " '{print "0310", $1, $2, $5, $6}' >> Dealer_working_during_losses

#Losses on  0312

grep -E "05:00:00".*"AM" 0312_Dealer_schedule | awk -F" " '{print "0312", $1, $2, $5, $6}' >> Dealer_working_during_losses 
grep -E "08:00:00".*"AM" 0312_Dealer_schedule | awk -F" " '{print "0312", $1, $2, $5, $6}' >> Dealer_working_during_losses
grep -E "02:00:00".*"PM" 0312_Dealer_schedule | awk -F" " '{print "0312", $1, $2, $5, $6}' >> Dealer_working_during_losses
grep -E "02:00:00".*"PM" 0312_Dealer_schedule | awk -F" " '{print "0312", $1, $2, $5, $6}' >> Dealer_working_during_losses
grep -E "11:00:00".*"PM" 0312_Dealer_schedule | awk -F" " '{print "0312", $1, $2, $5, $6}' >> Dealer_working_during_losses

# Losses on 0315

grep -E "05:00:00".*"AM" 0315_Dealer_schedule | awk -F" " '{print "0315", $1, $2, $5, $6}' >> Dealer_working_during_losses 
grep -E "08:00:00".*"AM" 0315_Dealer_schedule | awk -F" " '{print "0315", $1, $2, $5, $6}' >> Dealer_working_during_losses
grep -E "02:00:00".*"PM" 0315_Dealer_schedule | awk -F" " '{print "0315", $1, $2, $5, $6}' >> Dealer_working_during_losses


