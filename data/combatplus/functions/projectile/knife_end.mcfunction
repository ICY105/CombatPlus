
execute store result score #durability combatplus.data run data get entity @s item.components."minecraft:damage"

execute if entity @s[tag=!combatplus.knife.creative] if score #durability combatplus.data matches ..25 run function combatplus:m.spawn_item with entity @s item
execute if entity @s[tag=!combatplus.knife.creative] if score #durability combatplus.data matches 26.. run playsound minecraft:item.shield.break player @a[distance=..8] ~ ~ ~

kill @s
