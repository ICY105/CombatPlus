execute unless block ~ ~ ~ minecraft:barrel run kill @s
execute unless block ~ ~ ~ minecraft:barrel run kill @e[type=item,distance=..1]
execute unless block ~ ~ ~ minecraft:barrel run loot spawn ~ ~ ~ loot complus:crafter

data merge entity @s {Fire:32000s}

data modify block ~ ~ ~ Items[{tag:{du_gui:1b}}].id set value "minecraft:blast_furnace"
data modify block ~ ~ ~ Items[{tag:{du_gui:1b}}].tag set value {CustomModelData:6420002,du_gui:1b,HideFlags:63,display:{Name:"\"\""}}