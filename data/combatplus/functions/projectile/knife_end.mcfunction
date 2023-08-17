
execute store result score #durability combatplus.data run data get entity @s item.tag.Damage

execute if entity @s[tag=!combatplus.knife.creative] if score #durability combatplus.data matches ..25 run summon minecraft:item ~ ~0.5 ~ {Tags:["combatplus.new_item"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{}}}
execute if entity @s[tag=!combatplus.knife.creative] if score #durability combatplus.data matches ..25 run data modify entity @e[tag=combatplus.new_item,distance=..2,limit=1] Item.tag set from entity @s item.tag
execute if entity @s[tag=!combatplus.knife.creative] if score #durability combatplus.data matches ..25 run tag @e[tag=combatplus.new_item,distance=..2] remove combatplus.new_item
execute if entity @s[tag=!combatplus.knife.creative] if score #durability combatplus.data matches 26.. run playsound minecraft:item.shield.break player @a[distance=..8] ~ ~ ~

kill @s
