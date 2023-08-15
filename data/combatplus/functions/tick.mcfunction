
# player
execute as @a at @s run function combatplus:player/player

# proj
execute as @e[type=minecraft:item_display,tag=combatplus.projectile] at @s run function combatplus:proj/tick
