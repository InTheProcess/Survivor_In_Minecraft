scoreboard players add @s sr.st.sta 1
execute if score @s sr.st.has_jmp matches 1.. if predicate survivor:chance20 run scoreboard players add @s sr.st.sta 5
execute if score @s sr.st.sta < @s sr.st.mx_sta run effect give @s minecraft:hunger 2 50 true
