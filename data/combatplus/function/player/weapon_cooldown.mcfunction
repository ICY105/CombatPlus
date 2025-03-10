
# get style
scoreboard players set #style combatplus.data 0
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{combatplus:{style:"linear"}}] run scoreboard players set #style combatplus.data 1
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{combatplus:{style:"decay"}}] run scoreboard players set #style combatplus.data 2
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{combatplus:{style:"combo"}}] run scoreboard players set #style combatplus.data 3
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{combatplus:{style:"range"}}] run scoreboard players set #style combatplus.data 4

execute if score #style combatplus.data matches 0 run return 0

# tag
tag @s add combatplus.cooldown_triggered

# get attack speed
attribute @s minecraft:attack_speed modifier remove combatplus:max_attack_speed
execute store result score #attack_speed combatplus.data run attribute @s minecraft:attack_speed get 75
attribute @s minecraft:attack_speed modifier add combatplus:max_attack_speed 1024 add_value

# katana durability protection
execute if score #style combatplus.data matches 3 if score @s combatplus.cooldown.pause matches 8.. run data modify storage combatplus:temp item set from entity @s SelectedItem
execute if score #style combatplus.data matches 3 if score @s combatplus.cooldown.pause matches 8.. store result score #durability combatplus.data run data get storage combatplus:temp item.components."minecraft:damage"
execute if score #style combatplus.data matches 3 if score @s combatplus.cooldown.pause matches 8.. if score #durability combatplus.data matches 1.. run scoreboard players remove #durability combatplus.data 1
execute if score #style combatplus.data matches 3 if score @s combatplus.cooldown.pause matches 8.. store result storage combatplus:temp damage int 1 run scoreboard players get #durability combatplus.data
execute if score #style combatplus.data matches 3 if score @s combatplus.cooldown.pause matches 8.. run function combatplus:utils/m.set_item with storage combatplus:temp item

# modify cooldown
execute if score #style combatplus.data matches 1 run scoreboard players set @s combatplus.cooldown 0

execute if score #style combatplus.data matches 2 run scoreboard players set @s combatplus.cooldown.pause 15
execute if score #style combatplus.data matches 2 run scoreboard players remove @s combatplus.cooldown 200

execute if score #style combatplus.data matches 3 run scoreboard players set @s combatplus.cooldown.pause 10
execute if score #style combatplus.data matches 3 run scoreboard players operation #attack_speed combatplus.data *= #cons.2 combatplus.data
execute if score #style combatplus.data matches 3 run scoreboard players operation @s combatplus.cooldown += #attack_speed combatplus.data

execute if score #style combatplus.data matches 4 run scoreboard players set @s combatplus.cooldown 1

execute if score @s combatplus.cooldown matches ..0 run scoreboard players set @s combatplus.cooldown 0
execute if score @s combatplus.cooldown matches 1500.. run scoreboard players set @s combatplus.cooldown 1500
