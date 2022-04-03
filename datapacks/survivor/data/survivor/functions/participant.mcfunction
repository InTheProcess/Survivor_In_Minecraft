

#########
# Stats #
#########
scoreboard objectives add sr.st.has_jmp minecraft.custom:minecraft.jump
execute as @s unless entity @s[tag=survivor.stats] run function survivor:stats/give_stats

#############
# Functions #
#############
execute as @s[gamemode=!creative,gamemode=!spectator] if entity @s[tag=survivor.stats] run function survivor:stats/main
execute as @s[gamemode=!creative,gamemode=!spectator] if entity @s[tag=survivor.stats] run function survivor:items/main

##############
# Challenges #
##############
execute if entity @e[tag=survivor.challenge.is_challenge] run function survivor:challenges/main



execute if score @s sr.st.has_jmp matches 1.. run scoreboard players set @s sr.st.has_jmp 0