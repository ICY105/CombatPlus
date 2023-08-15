
execute store result score in_0 du_data run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.attack_damage"}].Amount 10
scoreboard players set in_1 du_data 0

execute as @e[type=#du:living,distance=..1,sort=nearest,limit=1] run function combatplus:damage_entity

playsound minecraft:item.trident.hit player @a

function combatplus:proj/knife_end
