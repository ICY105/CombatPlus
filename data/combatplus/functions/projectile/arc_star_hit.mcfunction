
scoreboard players set #success combatplus.data 1

execute store result score #damage combatplus.data run data get entity @s item.tag.combatplus.impact_damage

execute as @e[type=#combatplus:living,distance=..1,sort=nearest,limit=1] run function combatplus:damage_entity
execute as @e[type=#combatplus:living,distance=..1,sort=nearest,limit=1] run tag @s add combatplus.arc_star.sticky
tag @s add combatplus.arc_star.sticky

function combatplus:projectile/arc_star_charge
