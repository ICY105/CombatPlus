tp @s ~ ~ ~ ~ ~

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

#execute store result entity @s Motion[0] double 0.01 run scoreboard players get in_3 du_data
#execute store result entity @s Motion[1] double 0.01 run scoreboard players get in_4 du_data
#execute store result entity @s Motion[2] double 0.01 run scoreboard players get in_5 du_data

tag @s remove complus_new_knife
tag @s add complus_knife
execute if score temp_1 du_data matches 15 run tag @s add complus_wooden_knife
execute if score temp_1 du_data matches 15 store success entity @s HandItems[0].tag.CustomModelData int 6420015 if entity @s
execute if score temp_1 du_data matches 16 run tag @s add complus_golden_knife
execute if score temp_1 du_data matches 16 store success entity @s HandItems[0].tag.CustomModelData int 6420016 if entity @s
execute if score temp_1 du_data matches 17 run tag @s add complus_stone_knife
execute if score temp_1 du_data matches 17 store success entity @s HandItems[0].tag.CustomModelData int 6420017 if entity @s
execute if score temp_1 du_data matches 18 run tag @s add complus_iron_knife
execute if score temp_1 du_data matches 18 store success entity @s HandItems[0].tag.CustomModelData int 6420018 if entity @s
execute if score temp_1 du_data matches 19 run tag @s add complus_diamond_knife
execute if score temp_1 du_data matches 19 store success entity @s HandItems[0].tag.CustomModelData int 6420019 if entity @s
