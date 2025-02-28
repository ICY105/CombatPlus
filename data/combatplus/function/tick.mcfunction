
# player
execute as @a at @s run function combatplus:player/tick

# proj
execute as @e[type=minecraft:item_display,tag=combatplus.projectile] at @s run function combatplus:projectile/tick
