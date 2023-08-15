
execute store result score in_0 du_data run data get entity @s SelectedItem.tag.combatplus.cooldown 1

scoreboard players operation @s combatplus_cooldown -= in_0 du_data
execute if score @s combatplus_cooldown matches ..0 run scoreboard players set @s combatplus_cooldown 0
execute if score @s combatplus_cooldown matches 1500.. run scoreboard players set @s combatplus_cooldown 1500

