tp @s ~ ~ ~ ~ ~
scoreboard players remove in_0 du_data 1
execute if score in_0 du_data matches 1.. positioned ~ ~0.5 ~ if block ~ ~ ~ #du:air positioned ~ ~-0.5 ~ positioned ^ ^ ^0.1 rotated ~ ~0.2 run function complus:proj/knife_loop