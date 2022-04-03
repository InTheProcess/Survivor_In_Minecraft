scoreboard objectives add sr.st.spd dummy
scoreboard objectives add sr.st.mx_sta dummy
scoreboard objectives add sr.st.sta_cap dummy
scoreboard objectives add sr.st.sta dummy

#fast
scoreboard objectives add sr.st.sta_fst dummy
#slow
scoreboard objectives add sr.st.sta_slw dummy
#blind
scoreboard objectives add sr.st.sta_bnd dummy

##################
# movement speed #
##################
#setting max movement speed based on chance
scoreboard players set @s sr.st.spd 0
execute if predicate survivor:chance80 run scoreboard players add @s sr.st.spd 1
execute if score @s sr.st.spd matches 1..1 if predicate survivor:chance30 run scoreboard players add @s sr.st.spd 1


###########
# stamina #
###########
scoreboard players set @s sr.st.mx_sta 100
execute if predicate survivor:chance80 run scoreboard players add @s sr.st.mx_sta 10
execute if score @s sr.st.mx_sta matches 110..110 if predicate survivor:chance30 run scoreboard players add @s sr.st.mx_sta 10
execute store result score @s sr.st.sta run scoreboard players get @s sr.st.mx_sta

scoreboard players set @s sr.st.sta_fst 80
scoreboard players set @s sr.st.sta_slw 30
scoreboard players set @s sr.st.sta_cap 300

tag @s add survivor.stats