scoreboard players set @s sr.chl.tmr_typ 1

#Adds to timer, with 0.1 second increments
scoreboard players add @s sr.chl.tmr_dec 1
execute if score @s sr.chl.tmr_dec matches 10.. run scoreboard players add @s sr.chl.tmr 1
execute if score @s sr.chl.tmr_dec matches 10.. run scoreboard players set @s sr.chl.tmr_dec 0

#Stops the timer
execute if score @s sr.chl.tmr_mx matches 0.. if score @s sr.chl.tmr >= @s sr.chl.tmr_mx run scoreboard players set @s sr.chl.tmr_typ 0