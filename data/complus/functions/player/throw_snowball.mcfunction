execute positioned ~ ~1 ~ store success score temp_0 du_data run kill @e[type=snowball,distance=..1]

execute store result score in_0 du_data run data get entity @s Pos[0] 100
execute store result score in_1 du_data run data get entity @s Pos[1] 100
execute store result score in_2 du_data run data get entity @s Pos[2] 100

execute if score @s complus_hold_off matches 15..19 run scoreboard players operation temp_1 du_data = @s complus_hold_off
execute if score @s complus_holding matches 15..19 run scoreboard players operation temp_1 du_data = @s complus_holding

execute if score temp_0 du_data matches 1 if entity @s[y_rotation=-179.99..-135] positioned ~ ~0.61 ~ run summon armor_stand ^ ^ ^1 {Rotation:[180.0f,0.0f],Tags:["complus_new_knife"],HandItems:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData: 6420015}},{}],DisabledSlots:4144959,Marker:1b,Invisible:1b,Invulnerable:1b,Pose:{RightArm:[-10f,0f,-40f]}}
execute if score temp_0 du_data matches 1 if entity @s[y_rotation=135..179.99] positioned ~ ~0.61 ~ run summon armor_stand ^ ^ ^1 {Rotation:[180.0f,0.0f],Tags:["complus_new_knife"],HandItems:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData: 6420015}},{}],DisabledSlots:4144959,Marker:1b,Invisible:1b,Invulnerable:1b,Pose:{RightArm:[-10f,0f,-40f]}}
execute if score temp_0 du_data matches 1 if entity @s[y_rotation=-135..-45] positioned ~ ~0.61 ~ run summon armor_stand ^ ^ ^1 {Rotation:[-90.0f,0.0f],Tags:["complus_new_knife"],HandItems:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData: 6420015}},{}],DisabledSlots:4144959,Marker:1b,Invisible:1b,Invulnerable:1b,Pose:{RightArm:[-10f,0f,-40f]}}
execute if score temp_0 du_data matches 1 if entity @s[y_rotation=-45..45] positioned ~ ~0.61 ~ run summon armor_stand ^ ^ ^1 {Rotation:[0.0f,0.0f],Tags:["complus_new_knife"],HandItems:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData: 6420015}},{}],DisabledSlots:4144959,Marker:1b,Invisible:1b,Invulnerable:1b,Pose:{RightArm:[-10f,0f,-40f]}}
execute if score temp_0 du_data matches 1 if entity @s[y_rotation=45..135] positioned ~ ~0.61 ~ run summon armor_stand ^ ^ ^1 {Rotation:[90.0f,0.0f],Tags:["complus_new_knife"],HandItems:[{id:"minecraft:snowball",Count:1b,tag:{CustomModelData: 6420015}},{}],DisabledSlots:4144959,Marker:1b,Invisible:1b,Invulnerable:1b,Pose:{RightArm:[-10f,0f,-40f]}}


execute if score temp_0 du_data matches 1 rotated as @s as @e[tag=complus_new_knife] positioned as @s run function complus:player/throw_knife
