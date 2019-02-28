
#damage models
execute if data entity @s SelectedItem.tag.complus_decay run function complus:player/decay_tick
execute if data entity @s SelectedItem.tag.complus_linear run function complus:player/linear_tick

#knives
execute if entity @s[scores={complus_coas=1..}] if data entity @s Inventory[{Slot:-106b}].tag.complus_knife unless data entity @s SelectedItem.tag.complus_knife run function complus:player/throw_knife
execute if entity @s[scores={complus_coas=1..}] if data entity @s SelectedItem.tag.complus_knife run function complus:player/throw_knife

#arc star
execute if entity @s[scores={complus_coas=1..}] if data entity @s Inventory[{Slot:-106b}].tag.complus_arc_star unless data entity @s SelectedItem.tag.complus_arc_star run function complus:player/throw_arc_star
execute if entity @s[scores={complus_coas=1..}] if data entity @s SelectedItem.tag.complus_arc_star run function complus:player/throw_arc_star

#reset scores
execute unless data entity @s SelectedItem.tag.complus_linear run scoreboard players set @s complus_cooldown 0
execute if score @s complus_pearl matches 1.. run scoreboard players set @s complus_pearl 0
execute if score @s complus_coas matches 1.. run scoreboard players set @s complus_coas 0

#clear items
clear @s smoker{du_gui:1b}
execute store success score in_0 du_data run clear @s witch_spawn_egg 1
execute if score in_0 du_data matches 1 run loot give @s loot complus:crafter