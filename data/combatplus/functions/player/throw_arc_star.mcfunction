
# find slot
scoreboard players set #slot combatplus.data 0
execute if data entity @s SelectedItem.components."minecraft:custom_data".combatplus.arc_star run scoreboard players set #slot combatplus.data 1
execute if data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".combatplus.arc_star run scoreboard players set #slot combatplus.data 2

# copy item and clear slot
execute if score #slot combatplus.data matches 1 run data modify storage combatplus:temp item set from entity @s SelectedItem
execute if score #slot combatplus.data matches 1 run item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:air
execute if score #slot combatplus.data matches 2 run data modify storage combatplus:temp item set from entity @s Inventory[{Slot:-106b}]
execute if score #slot combatplus.data matches 2 run item replace entity @s[gamemode=!creative] weapon.offhand with minecraft:air

# init other data
scoreboard players set #gamemode combatplus.data 0
execute if entity @s[gamemode=creative] run scoreboard players set #gamemode combatplus.data 1

scoreboard players operation #uuid combatplus.data = @s combatplus.uuid

# run function
playsound combatplus:arc_star_throw player @s ~ ~ ~ 1 1
execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.1 ~ summon item_display run function combatplus:player/throw_arc_star_2
