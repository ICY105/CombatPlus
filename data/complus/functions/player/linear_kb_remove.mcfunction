
#get current KB level
execute store result score temp_2 du_data run data get block -29999999 0 1601 Items[0].tag.Enchantments[{id:"minecraft:knockback"}].lvl

#remove to level if KB
scoreboard players remove temp_2 du_data 1
execute if score temp_2 du_data matches ..0 run data remove block -29999999 0 1601 Items[0].tag.Enchantments[{id:"minecraft:knockback"}]
execute if score temp_2 du_data matches 1.. store result block -29999999 0 1601 Items[0].tag.Enchantments[{id:"minecraft:knockback"}].lvl short 1 run scoreboard players get temp_2 du_data

#set has no KB flag
execute store result block -29999999 0 1601 Items[0].tag.complus_linear.kb byte 1 if entity @s
