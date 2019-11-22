execute unless block ~ ~ ~ minecraft:barrel run kill @s
execute unless block ~ ~ ~ minecraft:barrel run kill @e[type=item,distance=..1]
execute unless block ~ ~ ~ minecraft:barrel run loot spawn ~ ~ ~ loot minecraft:blocks/smithing_table

data merge entity @s {Fire:32000s}

data modify block ~ ~ ~ Items[{tag:{du_gui:1b}}].id set value "minecraft:carrot_on_a_stick"
data modify block ~ ~ ~ Items[{tag:{du_gui:1b}}].tag set value {CustomModelData:6420002,du_gui:1b,HideFlags:63,display:{Name:'""'}}
replaceitem block ~ ~ ~ container.0 minecraft:carrot_on_a_stick{CustomModelData:6420003,du_gui:1b,HideFlags:63,display:{Name:'""'}}
