
tp @s ~ ~ ~ ~ ~

# tags
tag @s add combatplus
tag @s add combatplus.arc_star
tag @s add combatplus.projectile
execute if score #gamemode combatplus.data matches 1 run tag @s add combatplus.arc_star.creative

scoreboard players operation @s combatplus.uuid = #uuid combatplus.data

# copy data
data modify entity @s item set from storage combatplus:temp item

data modify entity @s transformation merge value {scale:[0.75,0.75,0.75],left_rotation:[0.0, 0.8, 0.5, 0.6]}
data modify entity @s brightness set value {sky:15,block:15}
