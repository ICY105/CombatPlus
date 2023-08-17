
execute unless score @s combatplus.uuid matches -2147483648.. store result score @s combatplus.uuid run data get entity @s UUID[0]

# result cooldown if item changed (ie. changed slots), then run attack styles
data modify storage combatplus:temp item set value {}
data modify storage combatplus:temp item set from entity @s SelectedItem

execute if data storage combatplus:temp item.tag.combatplus.style run function combatplus:player/weapon_tick
execute if entity @s[tag=combatplus.active_cooldown] unless data storage combatplus:temp item.tag.combatplus.style run function combatplus:player/weapon_end

execute if entity @s[tag=combatplus.active_cooldown] store result score #slot combatplus.data run data get entity @s SelectedItemSlot
execute if entity @s[tag=combatplus.active_cooldown] unless score @s combatplus.data = #slot combatplus.data run scoreboard players set @s combatplus.cooldown 0
execute if entity @s[tag=combatplus.active_cooldown] run scoreboard players operation @s combatplus.data = #slot combatplus.data

# thrown items
execute if entity @s[scores={combatplus.coas=1..}] if predicate combatplus:holding_knife run function combatplus:player/throw_knife
execute if entity @s[scores={combatplus.coas=1..}] if predicate combatplus:holding_arc_star run function combatplus:player/throw_arc_star

# reset score
execute if score @s combatplus.coas matches 1.. run scoreboard players set @s combatplus.coas 0
