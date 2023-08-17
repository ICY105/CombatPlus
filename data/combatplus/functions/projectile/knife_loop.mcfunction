
tp @s ~ ~ ~ ~ ~
scoreboard players remove #loop combatplus.data 1
execute if score #loop combatplus.data matches 1.. if block ~ ~ ~ #combatplus:raytrace positioned ^ ^ ^0.1 rotated ~ ~0.2 run function combatplus:projectile/knife_loop
