
# player
execute as @a at @s run function complus:player/player

# proj
execute as @e[type=minecraft:item_display,tag=complus.projectile] at @s run function complus:proj/tick
