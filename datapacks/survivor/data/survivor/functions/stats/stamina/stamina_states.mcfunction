#########
# logic #
#########
#adrenaline rush
execute if score @s sr.st.sta <= @s sr.st.sta_fst if score @s sr.st.sta >= @s sr.st.sta_slw if predicate survivor:is_sprinting run effect give @s minecraft:speed 1 1 true
#tired
execute if score @s sr.st.sta matches 0..29 run effect give @s minecraft:slowness 1 2 true
#exausted
execute if score @s sr.st.sta matches 0..15 run effect give @s minecraft:blindness 2 5 true

#recover state
#If a player pushes to hard and gets 10 or lower stamina, they can not move or see until they have 80 stamina
#displays particle effects to show that the player is in their recover state
execute if score @s sr.st.sta matches ..0 run tag @s add survivor.stats.stamina.recover
execute if score @s sr.st.sta matches ..0 run tag @s add survivor.stats.stamina.limit

execute if entity @s[tag=survivor.stats.stamina.limit] run playsound minecraft:entity.villager.death master @s ~ ~ ~ 1
execute if entity @s[tag=survivor.stats.stamina.limit] run tellraw @s {"text":"You have your body too hard. You will no longer be able to move until your stamina is at least 80 points.","color":"red"}
execute if entity @s[tag=survivor.stats.stamina.limit] run scoreboard players set @s sr.st.sta 1
tag @s remove survivor.stats.stamina.limit

execute if entity @s[tag=survivor.stats.stamina.recover] run effect give @s minecraft:jump_boost 1 128 true
execute if entity @s[tag=survivor.stats.stamina.recover] run effect give @s minecraft:slowness 1 255 true
execute if entity @s[tag=survivor.stats.stamina.recover] run effect give @s minecraft:blindness 2 255 true
execute if entity @s[tag=survivor.stats.stamina.recover] run effect give @s minecraft:mining_fatigue 1 255 true
execute if entity @s[tag=survivor.stats.stamina.recover] run effect give @s minecraft:weakness 1 5 true
execute if entity @s[tag=survivor.stats.stamina.recover] at @s run particle minecraft:smoke ~ ~ ~ 0 1 0 0.01 100 normal @a

execute if score @s sr.st.sta matches 80.. run tag @s remove survivor.stats.stamina.recover
