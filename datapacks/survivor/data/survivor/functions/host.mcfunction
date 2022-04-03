scoreboard objectives add sr.give trigger
scoreboard players enable @s sr.give
execute if score @s sr.give matches 1.. if entity @s[tag=survivor.host] run function survivor:give_items
execute if score @s sr.give matches 1.. run scoreboard players reset @s sr.give

#reset player
execute if entity @s[tag=survivor.player.reset] run function survivor:reset_player

#Teams
scoreboard objectives add sr.choose_teams trigger
scoreboard players enable @s sr.choose_teams
execute if score @s sr.choose_teams matches 1.. if entity @s[team=sr.host] as @r[team=] run function survivor:teams/choose_teams
execute if score @s sr.choose_teams matches 1.. run scoreboard players reset @s sr.choose_teams