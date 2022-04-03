teleport @s ~ ~ ~ ~ ~

execute as @e[tag=survivor.challenge.relay.pos1] if score @s sr.chl.tmr matches 1..1 run scoreboard players set @s sr.spc.mot_x 10
execute as @e[tag=survivor.challenge.relay.pos1] run function survivor:challenge/components/camera/move