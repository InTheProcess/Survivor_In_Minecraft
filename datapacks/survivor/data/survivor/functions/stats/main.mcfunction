##################
# movement speed #
##################
execute if score @s sr.st.spd matches 0..0 run attribute @s minecraft:generic.movement_speed base set 0.1
execute if score @s sr.st.spd matches 1..1 run attribute @s minecraft:generic.movement_speed base set 0.1
execute if score @s sr.st.spd matches 2..2 run attribute @s minecraft:generic.movement_speed base set 0.11
###########
# stamina #
###########

# states #
function survivor:stats/stamina/stamina_states

# logic #
execute unless entity @s[tag=survivor.stats.stamina.recover] run function survivor:stats/stamina/depleting_stamina
execute unless score @s sr.st.has_jmp matches 1.. if predicate survivor:chance10 if entity @s[nbt={foodLevel:20}] unless predicate survivor:is_sprinting run function survivor:stats/stamina/regenerating_stamina

execute if score @s sr.st.sta >= @s sr.st.mx_sta store result score @s sr.st.sta run scoreboard players get @s sr.st.mx_sta
execute if score @s sr.st.sta matches ..0 run scoreboard players set @s sr.st.sta 0
##########
# global #
##########
title @s actionbar [{"score":{"name":"@s","objective":"sr.st.sta"},"color":"white"},{"text":"⚡","color":"yellow"},{"text":" | ","color":"white"},{"score":{"name":"@s","objective":"sr.st.temp"},"color":"white"},{"text":"℉","color":"gray"},{"text":" | ","color":"white"},{"score":{"name":"@s","objective":"sr.st.thirst"},"color":"white"},{"text":"~","color":"blue"}]