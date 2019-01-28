advancement revoke @s only complus:use_decay_item

#add decay
scoreboard players add @s complus_decay 30

#get decay threshold
scoreboard players set temp_0 du_data 30
scoreboard players set temp_1 du_data 2
execute store result score in_0 du_data run data get entity @s SelectedItem.tag.complus_decay_level
scoreboard players operation in_0 du_data *= temp_0 du_data
scoreboard players remove in_0 du_data 30

#give weakness
execute if score @s complus_decay > in_0 du_data run effect give @s minecraft:weakness 3 0 false
scoreboard players operation in_0 du_data *= temp_1 du_data
execute if score @s complus_decay > in_0 du_data run effect give @s minecraft:weakness 3 1 false