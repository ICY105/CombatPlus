
#player
execute as @a at @s run function complus:player/player

#table tick
execute if score timer_20 du_data matches 0 as @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}}] at @s align xyz positioned ~0.5 ~-0.5 ~0.5 if block ~ ~ ~ minecraft:smithing_table run function complus:recipes/place_crafter
execute as @e[tag=complus_crafter] at @s run function complus:recipes/table_tick

#proj
execute as @e[tag=complus_knife] at @s run function complus:proj/knife
execute as @e[tag=complus_arc_star] at @s run function complus:proj/arc_star