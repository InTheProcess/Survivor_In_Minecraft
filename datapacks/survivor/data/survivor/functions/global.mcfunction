#############
# Functions #
#############
function survivor:spawnables/main

##############
# Challenges #
##############

#timer
execute if score @s sr.chl.tmr_tck matches 2.. if score @s sr.chl.tmr matches 0.. run scoreboard players set @s sr.chl.tmr_tck 0
execute if score @s sr.chl.tmr matches 0.. run scoreboard players add @s sr.chl.tmr_tck 1

execute if score @s sr.chl.tmr_tck matches 2.. if score @s sr.chl.tmr_typ matches 1..1 as @s run function survivor:challenges/componets/timer/count_up
execute if score @s sr.chl.tmr_tck matches 2.. if score @s sr.chl.tmr_typ matches -1..-1 as @s run function survivor:challenges/componets/timer/count_down