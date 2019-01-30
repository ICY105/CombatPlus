
scoreboard players set temp_1 du_data 64
execute if data entity @s HandItems[0].tag.du_dur.dur store result score temp_1 du_data run data get entity @s HandItems[0].tag.du_dur.dur

execute if score temp_1 du_data matches 4.. run summon minecraft:item ~ ~0.5 ~ {Tags:["complus_new_item"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{}}}
execute if score temp_1 du_data matches 4.. run data modify entity @e[tag=complus_new_item,limit=1] Item.tag set from entity @s HandItems[0].tag
execute if score temp_1 du_data matches 4.. run tag @e[tag=complus_new_item] remove complus_new_item
execute unless score temp_1 du_data matches 4.. run playsound minecraft:item.shield.break player @a[distance=..8] ~ ~ ~

kill @s