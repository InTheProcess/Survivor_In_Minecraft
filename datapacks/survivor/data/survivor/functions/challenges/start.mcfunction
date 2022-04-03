tag @e[tag=survivor.challenge.is_challenge] add survivor.challenge.tutorial
execute as @e[tag=survivor.challenge.is_challenge] run function survivor:challenges/components/timer/reset
execute as @e[tag=survivor.challenge.is_challenge] run function survivor:challenges/components/timer/count_up