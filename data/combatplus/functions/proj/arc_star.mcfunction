
scoreboard players set in_0 du_data 15
execute unless score @s du_data matches 1.. run function combatplus:proj/arc_star_loop

scoreboard players set temp_0 du_data 0
execute unless score @s du_data matches 1.. at @s store success score temp_0 du_data if entity @e[type=#du:living,distance=..1] run function combatplus:proj/arc_star_hit
execute unless score @s du_data matches 1.. at @s if score temp_0 du_data matches 0 positioned ~ ~0.5 ~ unless block ~ ~ ~ #du:air positioned ~ ~-0.5 ~ positioned ^ ^ ^-0.5 run function combatplus:proj/arc_star_charge

execute if score @s du_data matches 1.. run scoreboard players add @s du_data 1
execute if score @s[tag=combatplus_arc_star_tag] du_data matches 1.. at @e[tag=combatplus_arc_star_tag,sort=nearest,limit=1,type=#du:living,distance=..3] run tp @s ~ ~ ~
execute if score @s du_data matches 60.. at @s run function combatplus:proj/arc_star_explode
