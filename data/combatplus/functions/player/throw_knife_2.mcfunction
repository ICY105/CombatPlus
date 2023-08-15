tp @s ~ ~ ~ ~ ~

execute if score temp_1 du_data matches 1 run data modify entity @s HandItems[0].tag set from block -29999999 0 1601 Items[{Slot:0b}].tag
execute if score temp_1 du_data matches 2 run data modify entity @s HandItems[0].tag set from block -29999999 0 1601 Items[{Slot:1b}].tag

execute if score temp_3 du_data matches 1 run tag @s add combatplus_creative

execute store result score temp_2 du_data run data get entity @s HandItems[0].tag.Damage
scoreboard players add temp_2 du_data 4
execute store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players get temp_2 du_data

execute store result score in_3 du_data run data get entity @s Pos[0] 100
execute store result score in_4 du_data run data get entity @s Pos[1] 100
execute store result score in_5 du_data run data get entity @s Pos[2] 100

scoreboard players operation in_3 du_data -= in_0 du_data
scoreboard players operation in_4 du_data -= in_1 du_data
scoreboard players operation in_5 du_data -= in_2 du_data

scoreboard players remove in_4 du_data 161

scoreboard players set temp_0 du_data 3

scoreboard players operation in_3 du_data *= temp_0 du_data
scoreboard players operation in_4 du_data *= temp_0 du_data
scoreboard players operation in_5 du_data *= temp_0 du_data

tag @s remove combatplus_new_knife
tag @s add combatplus_knife

