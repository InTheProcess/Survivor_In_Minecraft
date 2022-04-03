scoreboard players set @s sr.chl.tmr_typ -1

#Adds to timer, with 0.1 second increments
scoreboard players remove @s sr.chl.tmr_dec 1
execute if score @s sr.chl.tmr_dec matches ..-1 run scoreboard players remove @s sr.chl.tmr 1
execute if score @s sr.chl.tmr_dec matches ..-1 run scoreboard players set @s sr.chl.tmr_dec 9
#Sets the timer decimal to 0 if the timer is 0 or less
execute if score @s sr.chl.tmr matches ..0 run scoreboard players set @s sr.chl.tmr_dec 0

#Stops the timer
execute if score @s sr.chl.tmr matches ..0 if score @s sr.chl.tmr_dec matches ..0 run scoreboard players set @s sr.chl.tmr_typ 0