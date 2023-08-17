
scoreboard players set #loop combatplus.data 15
function combatplus:projectile/knife_loop

scoreboard players operation #predicate combatplus.data = @s combatplus.uuid

scoreboard players set #success combatplus.data 0
execute at @s positioned ~ ~-1 ~ if entity @e[type=#combatplus:living,distance=..1,predicate=!combatplus:is_player] run function combatplus:projectile/knife_hit
execute at @s if score #success combatplus.data matches 0 unless block ~ ~ ~ #combatplus:raytrace positioned ^ ^ ^0.1 run function combatplus:projectile/knife_end