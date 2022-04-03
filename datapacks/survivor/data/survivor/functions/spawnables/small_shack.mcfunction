execute at @s run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:1,posY:0,posZ:1,name:"survivor:small_shack"}
execute at @s run setblock ~1 ~ ~ minecraft:redstone_block
execute at @s run fill ~ ~ ~ ~1 ~ ~ minecraft:air
kill @s