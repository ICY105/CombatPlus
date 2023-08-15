
execute store result score in_0 du_data run data get entity @s Pos[0] 100
execute store result score in_1 du_data run data get entity @s Pos[1] 100
execute store result score in_2 du_data run data get entity @s Pos[2] 100

function du:player/inv/get_equipment

scoreboard players set temp_1 du_data 0
execute if data entity @s Inventory[{Slot:-106b}].tag.combatplus_knife unless data entity @s SelectedItem.tag.combatplus_knife run scoreboard players set temp_1 du_data 2
execute if data entity @s Inventory[{Slot:-106b}].tag.combatplus_knife unless data entity @s SelectedItem.tag.combatplus_knife run replaceitem entity @s[gamemode=!creative] weapon.offhand air

execute if data entity @s SelectedItem.tag.combatplus_knife run scoreboard players set temp_1 du_data 1
execute if data entity @s SelectedItem.tag.combatplus_knife run replaceitem entity @s[gamemode=!creative] weapon.mainhand air


execute if entity @s[y_rotation=-179.99..-135] positioned ~ ~0.61 ~ run summon armor_stand ^ ^ ^1 {Rotation:[180.0f,0.0f],Tags:["combatplus_new_knife"],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{}},{}],DisabledSlots:4144959,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Pose:{RightArm:[-10f,0f,-40f]}}
execute if entity @s[y_rotation=135..179.99] positioned ~ ~0.61 ~ run summon armor_stand ^ ^ ^1 {Rotation:[180.0f,0.0f],Tags:["combatplus_new_knife"],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{}},{}],DisabledSlots:4144959,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Pose:{RightArm:[-10f,0f,-40f]}}
execute if entity @s[y_rotation=-135..-45] positioned ~ ~0.61 ~ run summon armor_stand ^ ^ ^1 {Rotation:[-90.0f,0.0f],Tags:["combatplus_new_knife"],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{}},{}],DisabledSlots:4144959,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Pose:{RightArm:[-10f,0f,-40f]}}
execute if entity @s[y_rotation=-45..45] positioned ~ ~0.61 ~ run summon armor_stand ^ ^ ^1 {Rotation:[0.0f,0.0f],Tags:["combatplus_new_knife"],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{}},{}],DisabledSlots:4144959,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Pose:{RightArm:[-10f,0f,-40f]}}
execute if entity @s[y_rotation=45..135] positioned ~ ~0.61 ~ run summon armor_stand ^ ^ ^1 {Rotation:[90.0f,0.0f],Tags:["combatplus_new_knife"],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{}},{}],DisabledSlots:4144959,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Pose:{RightArm:[-10f,0f,-40f]}}

scoreboard players set temp_3 du_data 0
execute if entity @s[gamemode=creative] run scoreboard players set temp_3 du_data 1
execute if score temp_1 du_data matches 1..2 rotated as @s as @e[tag=combatplus_new_knife] positioned as @s run function combatplus:player/throw_knife_2
