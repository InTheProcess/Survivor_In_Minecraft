execute if predicate survivor:is_sprinting if predicate survivor:chance30 run scoreboard players remove @s sr.st.sta 1
execute if score @s sr.st.has_jmp matches 1.. if predicate survivor:chance70 run scoreboard players remove @s sr.st.sta 5
execute if predicate survivor:is_dense if predicate survivor:is_sprinting run scoreboard players remove @s sr.st.sta 5
execute if predicate survivor:is_dense if score @s sr.st.has_jmp matches 1.. run scoreboard players remove @s sr.st.sta 10