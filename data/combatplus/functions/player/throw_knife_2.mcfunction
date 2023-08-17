
tp @s ~ ~ ~ ~ ~

# tags
tag @s add combatplus
tag @s add combatplus.knife
tag @s add combatplus.projectile
execute if score #gamemode combatplus.data matches 1 run tag @s add combatplus.knife.creative

scoreboard players operation @s combatplus.uuid = #uuid combatplus.data

# damage item
execute store result score #durability combatplus.data run data get storage combatplus:temp item.tag.Damage
scoreboard players add #durability combatplus.data 1
execute store result storage combatplus:temp item.tag.Damage int 1 run scoreboard players get #durability combatplus.data

# copy data
data modify entity @s item set from storage combatplus:temp item

data modify entity @s transformation merge value {scale:[0.75,0.75,0.75],left_rotation:[0.0, 0.8, 0.5, 0.6]}
