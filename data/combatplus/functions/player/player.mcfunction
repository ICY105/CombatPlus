
#damage models
execute if data entity @s SelectedItem.tag.combatplus run function combatplus:player/weapon_tick

#knives
execute if entity @s[scores={combatplus_coas=1..}] if data entity @s Inventory[{Slot:-106b}].tag.combatplus_knife unless data entity @s SelectedItem.tag.combatplus_knife run function combatplus:player/throw_knife
execute if entity @s[scores={combatplus_coas=1..}] if data entity @s SelectedItem.tag.combatplus_knife run function combatplus:player/throw_knife

#arc star
execute if entity @s[scores={combatplus_coas=1..}] if data entity @s Inventory[{Slot:-106b}].tag.combatplus_arc_star unless data entity @s SelectedItem.tag.combatplus_arc_star run function combatplus:player/throw_arc_star
execute if entity @s[scores={combatplus_coas=1..}] if data entity @s SelectedItem.tag.combatplus_arc_star run function combatplus:player/throw_arc_star

#reset scores
execute if score @s combatplus_coas matches 1.. run scoreboard players set @s combatplus_coas 0

#clear items
clear @s minecraft:carrot_on_a_stick{du_gui:1b}

#revoke advancement
advancement revoke @s only combatplus:attack_entity
