scoreboard players set in_0 du_data 0
execute if entity @s[tag=complus_wooden_knife] run scoreboard players set in_0 du_data 15
execute if entity @s[tag=complus_golden_knife] run scoreboard players set in_0 du_data 15
execute if entity @s[tag=complus_stone_knife] run scoreboard players set in_0 du_data 20
execute if entity @s[tag=complus_iron_knife] run scoreboard players set in_0 du_data 25
execute if entity @s[tag=complus_diamond_knife] run scoreboard players set in_0 du_data 30
scoreboard players set in_1 du_data 0

execute as @e[type=#du:living,distance=..1,sort=nearest,limit=1] run function complus:damage_entity
kill @s
