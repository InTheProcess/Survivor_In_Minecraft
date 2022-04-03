execute if predicate survivor:chance50 run team join sr.tm.red @s
execute if entity @s[team=] run team join sr.tm.blue @s

execute if entity @s[team=sr.tm.red] run tellraw @s {"text":"Welcome to Team Red!","color":"red"}
execute if entity @s[team=sr.tm.blue] run tellraw @s {"text":"Welcome to Team Blue!","color":"blue"}

execute at @s run playsound minecraft:entity.player.levelup neutral @s ~ ~ ~