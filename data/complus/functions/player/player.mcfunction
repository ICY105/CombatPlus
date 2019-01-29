
#damage decay
execute if score timer_100 du_data matches 0 if data entity @s SelectedItem.tag.complus_decay run function complus:player/recharge_decay_item
execute if score timer_100 du_data matches 50 if data entity @s SelectedItem.tag.complus_decay run function complus:player/recharge_decay_item

#knives
execute if entity @s[scores={complus_snowball=1..,complus_holding=15..19}] run function complus:player/throw_snowball
execute if entity @s[scores={complus_snowball=1..,complus_hold_off=15..19}] run function complus:player/throw_snowball

#reset scores
execute store result score @s complus_holding run data get entity @s SelectedItem.tag.complus_id
execute store result score @s complus_hold_off run data get entity @s Inventory[{Slot:-106b}].tag.complus_id
execute if score @s complus_snowball matches 1.. run scoreboard players set @s complus_snowball 0

#clear items
clear @s smoker{du_gui:1b}
execute store success score in_0 du_data run clear @s witch_spawn_egg 1
execute if score in_0 du_data matches 1 run loot give @s loot complus:crafter