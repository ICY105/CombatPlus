
# get damage
execute store result score #damage combatplus.data run data get entity @s item.components."minecraft:custom_data".combatplus.explosion_damage
execute store result storage combatplus:temp obj.amount double 0.1 run data get entity @s item.components."minecraft:custom_data".combatplus.explosion_damage

# effects
effect give @e[type=#combatplus:living,distance=..3,sort=nearest] minecraft:slowness 5 2 true
effect give @e[type=#combatplus:living,distance=..3,sort=nearest] minecraft:nausea 5 0 true
effect give @e[type=#combatplus:living,distance=3..6,sort=nearest] minecraft:slowness 5 1 true

# deal damage
execute if score #damage combatplus.data matches ..49 as @e[type=#combatplus:living,distance=..2,sort=nearest] run function combatplus:damage_entity with storage combatplus:temp obj
execute if score #damage combatplus.data matches 50..99 as @e[type=#combatplus:living,distance=..3,sort=nearest] run function combatplus:damage_entity with storage combatplus:temp obj
execute if score #damage combatplus.data matches 100.. as @e[type=#combatplus:living,distance=..4,sort=nearest] run function combatplus:damage_entity with storage combatplus:temp obj

# break block
execute if score #damage combatplus.data matches 50.. positioned ~ ~1 ~ unless block ~ ~ ~ #combatplus:explosion_proof run setblock ~ ~ ~ air destroy
execute if score #damage combatplus.data matches 50.. positioned ~ ~1 ~ unless block ~1 ~ ~ #combatplus:explosion_proof run setblock ~1 ~ ~ air destroy
execute if score #damage combatplus.data matches 50.. positioned ~ ~1 ~ unless block ~ ~1 ~ #combatplus:explosion_proof run setblock ~ ~1 ~ air destroy
execute if score #damage combatplus.data matches 50.. positioned ~ ~1 ~ unless block ~ ~ ~1 #combatplus:explosion_proof run setblock ~ ~ ~1 air destroy
execute if score #damage combatplus.data matches 50.. positioned ~ ~1 ~ unless block ~-1 ~ ~ #combatplus:explosion_proof run setblock ~-1 ~ ~ air destroy
execute if score #damage combatplus.data matches 50.. positioned ~ ~1 ~ unless block ~ ~-1 ~ #combatplus:explosion_proof run setblock ~ ~-1 ~ air destroy
execute if score #damage combatplus.data matches 50.. positioned ~ ~1 ~ unless block ~ ~ ~-1 #combatplus:explosion_proof run setblock ~ ~ ~-1 air destroy

execute if score #damage combatplus.data matches 100.. positioned ~ ~1 ~ unless block ~1 ~ ~1 #combatplus:explosion_proof run setblock ~1 ~ ~1 air destroy
execute if score #damage combatplus.data matches 100.. positioned ~ ~1 ~ unless block ~1 ~ ~-1 #combatplus:explosion_proof run setblock ~1 ~ ~-1 air destroy
execute if score #damage combatplus.data matches 100.. positioned ~ ~1 ~ unless block ~-1 ~ ~1 #combatplus:explosion_proof run setblock ~-1 ~ ~1 air destroy
execute if score #damage combatplus.data matches 100.. positioned ~ ~1 ~ unless block ~-1 ~ ~-1 #combatplus:explosion_proof run setblock ~-1 ~ ~-1 air destroy

execute if score #damage combatplus.data matches 100.. positioned ~ ~1 ~ unless block ~1 ~1 ~ #combatplus:explosion_proof run setblock ~1 ~1 ~ air destroy
execute if score #damage combatplus.data matches 100.. positioned ~ ~1 ~ unless block ~1 ~-1 ~ #combatplus:explosion_proof run setblock ~1 ~-1 ~ air destroy
execute if score #damage combatplus.data matches 100.. positioned ~ ~1 ~ unless block ~-1 ~1 ~ #combatplus:explosion_proof run setblock ~-1 ~1 ~ air destroy
execute if score #damage combatplus.data matches 100.. positioned ~ ~1 ~ unless block ~-1 ~-1 ~ #combatplus:explosion_proof run setblock ~-1 ~-1 ~ air destroy

execute if score #damage combatplus.data matches 100.. positioned ~ ~1 ~ unless block ~ ~1 ~1 #combatplus:explosion_proof run setblock ~ ~1 ~1 air destroy
execute if score #damage combatplus.data matches 100.. positioned ~ ~1 ~ unless block ~ ~-1 ~1 #combatplus:explosion_proof run setblock ~ ~-1 ~1 air destroy
execute if score #damage combatplus.data matches 100.. positioned ~ ~1 ~ unless block ~ ~1 ~-1 #combatplus:explosion_proof run setblock ~ ~1 ~-1 air destroy
execute if score #damage combatplus.data matches 100.. positioned ~ ~1 ~ unless block ~ ~-1 ~-1 #combatplus:explosion_proof run setblock ~ ~-1 ~-1 air destroy

# effects
particle minecraft:dust{color:[0.0, 0.5, 1.0],scale: 1.0} ~ ~1 ~ 1 1 1 1 150 normal
playsound combatplus:arc_star_explode player @a[distance=..32] ~ ~ ~ 1 1

# cleanup
execute if entity @s[tag=combatplus.arc_star.sticky] run tag @e[type=#combatplus:living,tag=combatplus.arc_star.sticky,distance=..3,sort=nearest,limit=1] remove combatplus.arc_star.sticky
kill @s
