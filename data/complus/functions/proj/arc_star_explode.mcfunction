
#get level
execute store result score temp_5 du_data run data get entity @s HandItems[0].tag.complus_id
execute if score temp_5 du_data matches 36 run scoreboard players set in_0 du_data 25
execute if score temp_5 du_data matches 37 run scoreboard players set in_0 du_data 50
execute if score temp_5 du_data matches 38 run scoreboard players set in_0 du_data 75
execute if score temp_5 du_data matches 39 run scoreboard players set in_0 du_data 100
execute if score temp_5 du_data matches 102 run scoreboard players set in_0 du_data 100
scoreboard players set in_1 du_data 0

#slow
effect give @e[type=#du:living,distance=0..3,sort=nearest] minecraft:slowness 5 2 true
effect give @e[type=#du:living,distance=0..3,sort=nearest] minecraft:nausea 5 0 true
effect give @e[type=#du:living,distance=3..6,sort=nearest] minecraft:slowness 5 1 true
execute if score temp_5 du_data matches 36 run effect give @e[type=#du:living,distance=..6,sort=nearest] minecraft:glowing 10 0 true

#deal damage
execute if score temp_5 du_data matches 36..37 as @e[type=#du:living,distance=..2,sort=nearest] run function complus:damage_entity
execute if score temp_5 du_data matches 38 as @e[type=#du:living,distance=..3,sort=nearest] run function complus:damage_entity
execute if score temp_5 du_data matches 39..102 as @e[type=#du:living,distance=..4,sort=nearest] run function complus:damage_entity

#break block
execute if score temp_5 du_data matches 37..102 unless block ~ ~ ~ #du:unbreakable run setblock ~ ~ ~ air destroy
execute if score temp_5 du_data matches 37..102 unless block ~1 ~ ~ #du:unbreakable run setblock ~1 ~ ~ air destroy
execute if score temp_5 du_data matches 37..102 unless block ~ ~1 ~ #du:unbreakable run setblock ~ ~1 ~ air destroy
execute if score temp_5 du_data matches 37..102 unless block ~ ~ ~1 #du:unbreakable run setblock ~ ~ ~1 air destroy
execute if score temp_5 du_data matches 37..102 unless block ~-1 ~ ~ #du:unbreakable run setblock ~-1 ~ ~ air destroy
execute if score temp_5 du_data matches 37..102 unless block ~ ~-1 ~ #du:unbreakable run setblock ~ ~-1 ~ air destroy
execute if score temp_5 du_data matches 37..102 unless block ~ ~ ~-1 #du:unbreakable run setblock ~ ~ ~-1 air destroy

execute if score temp_5 du_data matches 39..102 unless block ~1 ~ ~1 #du:unbreakable run setblock ~1 ~ ~1 air destroy
execute if score temp_5 du_data matches 39..102 unless block ~1 ~ ~-1 #du:unbreakable run setblock ~1 ~ ~-1 air destroy
execute if score temp_5 du_data matches 39..102 unless block ~-1 ~ ~1 #du:unbreakable run setblock ~-1 ~ ~1 air destroy
execute if score temp_5 du_data matches 39..102 unless block ~-1 ~ ~-1 #du:unbreakable run setblock ~-1 ~ ~-1 air destroy

execute if score temp_5 du_data matches 39..102 unless block ~1 ~1 ~ #du:unbreakable run setblock ~1 ~1 ~ air destroy
execute if score temp_5 du_data matches 39..102 unless block ~1 ~-1 ~ #du:unbreakable run setblock ~1 ~-1 ~ air destroy
execute if score temp_5 du_data matches 39..102 unless block ~-1 ~1 ~ #du:unbreakable run setblock ~-1 ~1 ~ air destroy
execute if score temp_5 du_data matches 39..102 unless block ~-1 ~-1 ~ #du:unbreakable run setblock ~-1 ~-1 ~ air destroy

execute if score temp_5 du_data matches 39..102 unless block ~ ~1 ~1 #du:unbreakable run setblock ~ ~1 ~1 air destroy
execute if score temp_5 du_data matches 39..102 unless block ~ ~-1 ~1 #du:unbreakable run setblock ~ ~-1 ~1 air destroy
execute if score temp_5 du_data matches 39..102 unless block ~ ~1 ~-1 #du:unbreakable run setblock ~ ~1 ~-1 air destroy
execute if score temp_5 du_data matches 39..102 unless block ~ ~-1 ~-1 #du:unbreakable run setblock ~ ~-1 ~-1 air destroy

#effects
particle minecraft:dust 0.0 0.5 1.0 1.0 ~ ~1 ~ 1 1 1 1 150 normal
playsound complus:arc_star_explode player @a ~ ~ ~ 1 1

#cleanup
execute if entity @s[tag=complus_arc_star_tag] run tag @e[tag=complus_arc_star_tag,sort=nearest,limit=1,type=#du:living,distance=..3] remove complus_arc_star_tag
kill @s
