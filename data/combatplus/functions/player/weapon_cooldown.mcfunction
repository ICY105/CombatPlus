
data modify storage combatplus:temp item set value {}
data modify storage combatplus:temp item set from entity @s SelectedItem

# get attack speed
attribute @s minecraft:generic.attack_speed modifier remove dd087eab-976d-41a5-a84b-9fdee0fdf97f
execute store result score #attack_speed combatplus.data run attribute @s minecraft:generic.attack_speed get 75
attribute @s minecraft:generic.attack_speed modifier add dd087eab-976d-41a5-a84b-9fdee0fdf97f "generic.attack_speed" 1024 add

# get style
scoreboard players set #style combatplus.data 0
execute if data storage combatplus:temp item.tag.combatplus{style:"linear"} run scoreboard players set #style combatplus.data 1
execute if data storage combatplus:temp item.tag.combatplus{style:"decay"} run scoreboard players set #style combatplus.data 2
execute if data storage combatplus:temp item.tag.combatplus{style:"combo"} run scoreboard players set #style combatplus.data 3

# modif cooldown
execute if score #style combatplus.data matches 1 run scoreboard players set @s combatplus.cooldown 0

execute if score #style combatplus.data matches 2 run scoreboard players set @s combatplus.cooldown.pause 15
execute if score #style combatplus.data matches 2 run scoreboard players remove @s combatplus.cooldown 200

execute if score #style combatplus.data matches 3 run scoreboard players set @s combatplus.cooldown.pause 10
execute if score #style combatplus.data matches 3 run scoreboard players operation #attack_speed combatplus.data *= #cons.2 combatplus.data
execute if score #style combatplus.data matches 3 run scoreboard players operation @s combatplus.cooldown += #attack_speed combatplus.data

execute if score @s combatplus.cooldown matches ..0 run scoreboard players set @s combatplus.cooldown 0
execute if score @s combatplus.cooldown matches 1500.. run scoreboard players set @s combatplus.cooldown 1500
