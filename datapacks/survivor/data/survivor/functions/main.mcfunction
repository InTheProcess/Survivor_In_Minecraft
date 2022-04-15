execute as @a[team=sr.host] run function survivor:host
execute as @a[team=!sr.host] run function survivor:participant
execute as @a run function survivor:global
execute as @e[type=minecraft:armor_stand] run function survivor:global
execute run say hi
