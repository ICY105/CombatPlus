
scoreboard players set in_0 du_data 15
function combatplus:proj/knife_loop

scoreboard players set temp_0 du_data 0
execute at @s store success score temp_0 du_data if entity @e[type=#du:living,distance=..1] run function combatplus:proj/knife_hit
execute at @s if score temp_0 du_data matches 0 positioned ~ ~0.5 ~ unless block ~ ~ ~ #du:air positioned ~ ~-0.5 ~ positioned ^ ^ ^-0.5 run function combatplus:proj/knife_end