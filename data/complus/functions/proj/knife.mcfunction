
scoreboard players set in_0 du_data 10
function complus:proj/knife_loop

scoreboard players set temp_0 du_data 0
execute at @s store success score temp_0 du_data if entity @e[type=#du:living,distance=..1] run function complus:proj/knife_hit
execute at @s if score temp_0 du_data matches 0 positioned ~ ~0.5 ~ unless block ~ ~ ~ #du:air positioned ~ ~-0.5 ~ positioned ^ ^ ^-0.5 run function complus:proj/knife_end