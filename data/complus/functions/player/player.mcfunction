
#damage models
execute if data entity @s SelectedItem.tag.complus run function complus:player/weapon_tick

#knives
execute if entity @s[scores={complus_coas=1..}] if data entity @s Inventory[{Slot:-106b}].tag.complus_knife unless data entity @s SelectedItem.tag.complus_knife run function complus:player/throw_knife
execute if entity @s[scores={complus_coas=1..}] if data entity @s SelectedItem.tag.complus_knife run function complus:player/throw_knife

#arc star
execute if entity @s[scores={complus_coas=1..}] if data entity @s Inventory[{Slot:-106b}].tag.complus_arc_star unless data entity @s SelectedItem.tag.complus_arc_star run function complus:player/throw_arc_star
execute if entity @s[scores={complus_coas=1..}] if data entity @s SelectedItem.tag.complus_arc_star run function complus:player/throw_arc_star

#reset scores
execute if score @s complus_coas matches 1.. run scoreboard players set @s complus_coas 0

#clear items
clear @s minecraft:carrot_on_a_stick{du_gui:1b}

#revoke advancement
advancement revoke @s only complus:attack_entity
