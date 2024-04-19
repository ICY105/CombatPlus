
scoreboard players set #success combatplus.data 1

execute store result storage combatplus:temp obj.amount double 0.1 run data get entity @s item.components."minecraft:custom_data".combatplus.impact_damage

execute as @e[type=#combatplus:living,distance=..1,sort=nearest,limit=1] run function combatplus:damage_entity with storage combatplus:temp obj
execute as @e[type=#combatplus:living,distance=..1,sort=nearest,limit=1] run tag @s add combatplus.arc_star.sticky
tag @s add combatplus.arc_star.sticky

function combatplus:projectile/arc_star_charge
