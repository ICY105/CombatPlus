
scoreboard players set #loop combatplus.data 15
execute unless score @s combatplus.data matches 1.. run function combatplus:projectile/arc_star_loop

scoreboard players operation #predicate combatplus.data = @s combatplus.uuid

scoreboard players set #success combatplus.data 0
execute unless score @s combatplus.data matches 1.. at @s positioned ~ ~-1 ~ if entity @e[type=#combatplus:living,distance=..1,predicate=!combatplus:is_player] run function combatplus:projectile/arc_star_hit
execute unless score @s combatplus.data matches 1.. at @s if score #success combatplus.data matches 0 unless block ~ ~ ~ #combatplus:raytrace positioned ^ ^ ^0.1 run function combatplus:projectile/arc_star_charge

execute if score @s combatplus.data matches 1.. run scoreboard players add @s combatplus.data 1
execute if score @s[tag=combatplus.arc_star.sticky] combatplus.data matches 1.. positioned ~ ~-1 ~ at @e[tag=combatplus.arc_star.sticky,sort=nearest,limit=1,type=#combatplus:living,distance=..3] run tp @s ~ ~0.75 ~
execute if score @s combatplus.data matches 60.. at @s positioned ~ ~-1 ~ run function combatplus:projectile/arc_star_explode
