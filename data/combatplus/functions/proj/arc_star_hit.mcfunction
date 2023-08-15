
execute store result score temp_1 du_data run data get entity @s HandItems[0].tag.combatplus_id
execute if score temp_1 du_data matches 35 run scoreboard players set in_0 du_data 10
execute if score temp_1 du_data matches 36 run scoreboard players set in_0 du_data 10
execute if score temp_1 du_data matches 37 run scoreboard players set in_0 du_data 15
execute if score temp_1 du_data matches 38 run scoreboard players set in_0 du_data 20
execute if score temp_1 du_data matches 39 run scoreboard players set in_0 du_data 25

scoreboard players set in_1 du_data 0

execute as @e[type=#du:living,distance=..1,sort=nearest,limit=1] run function combatplus:damage_entity
execute as @e[type=#du:living,distance=..1,sort=nearest,limit=1] run tag @s add combatplus_arc_star_tag
tag @s add combatplus_arc_star_tag

function combatplus:proj/arc_star_charge
