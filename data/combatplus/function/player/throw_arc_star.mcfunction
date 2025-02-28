
advancement revoke @s only combatplus:use_arc_star

scoreboard players add @s combatplus.throw_delay 2
execute if score @s combatplus.throw_delay matches ..20 run return 0
scoreboard players set @s combatplus.throw_delay 0

# find slot
scoreboard players set #slot combatplus.data 0
execute if items entity @s weapon.offhand *[minecraft:custom_data~{combatplus:{id: "arc_star"}}] run scoreboard players set #slot combatplus.data 2
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{combatplus:{id: "arc_star"}}] run scoreboard players set #slot combatplus.data 1

# copy item and clear slot
execute if score #slot combatplus.data matches 1 run data modify storage combatplus:temp item set from entity @s SelectedItem
execute if score #slot combatplus.data matches 1 run item modify entity @s[gamemode=!creative] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}
execute if score #slot combatplus.data matches 2 run data modify storage combatplus:temp item set from entity @s Inventory[{Slot:-106b}]
execute if score #slot combatplus.data matches 2 run item modify entity @s[gamemode=!creative] weapon.offhand {"function":"minecraft:set_count","count":-1,"add":true}

# init other data
scoreboard players set #gamemode combatplus.data 0
execute if entity @s[gamemode=creative] run scoreboard players set #gamemode combatplus.data 1

scoreboard players operation #uuid combatplus.data = @s combatplus.uuid

# run function
playsound combatplus:arc_star_throw player @s ~ ~ ~ 1 1
execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.1 ~ summon item_display run function combatplus:player/throw_arc_star_2
