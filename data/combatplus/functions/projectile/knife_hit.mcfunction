
scoreboard players set #success combatplus.data 1

execute store result score #damage combatplus.data run data get entity @s item.tag.AttributeModifiers[{Name:"generic.attack_damage"}].Amount 10
execute as @e[type=#combatplus:living,predicate=!combatplus:is_player,distance=..1,sort=nearest,limit=1] run function combatplus:damage_entity

playsound minecraft:item.trident.hit player @a[distance=..16]

function combatplus:projectile/knife_end
