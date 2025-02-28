
scoreboard players set #success combatplus.data 1

execute store result score #damage combatplus.data run data get entity @s item.components."minecraft:attribute_modifiers".modifiers[{id:"combatplus:knife_attack_damage"}].amount 10
scoreboard players add #damage combatplus.data 10
execute store result score #sharpness combatplus.data run data get entity @s item.components."minecraft:enchantments".levels."minecraft:sharpness" 5
execute if score #sharpness combatplus.data matches 1.. run scoreboard players operation #damage combatplus.data += #sharpness combatplus.data
execute if score #sharpness combatplus.data matches 1.. run scoreboard players add #damage combatplus.data 5

data modify storage combatplus:temp obj set value {amount: 0}
execute store result storage combatplus:temp obj.amount double 0.1 run scoreboard players get #damage combatplus.data
execute as @e[type=#combatplus:living,predicate=!combatplus:is_player,distance=..1,sort=nearest,limit=1] run function combatplus:damage_entity with storage combatplus:temp obj

playsound minecraft:item.trident.hit player @a[distance=..16]

function combatplus:projectile/knife_end
