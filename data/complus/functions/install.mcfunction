
scoreboard players set $install complus_cooldown 1

#check for 1.15
scoreboard players set $install.15 complus_cooldown 0
function complus:utils/check_1.15
execute if score $install.15 complus_cooldown matches 0 run scoreboard players set $install complus_cooldown 0
execute if score $install.15 complus_cooldown matches 0 run tellraw @a [{"text":"Error: This version of Combat+ requires Minecraft +1.15. Click [here] to download the latest version for 1.14 (1.0.1).\n","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/CombatPlus/releases"}}]

#check DU
execute unless score $du.ver load matches 2010004.. run scoreboard players set $install complus_cooldown 0
execute unless score $du.ver load matches 2010004.. run tellraw @a [{"text":"Error: Cave Biomes requires Datapack Utilities version +2.1.0d. You can download that [here].\n","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Datapack-Utilities/releases"}}]

#print install message
execute if score $install complus_cooldown matches 1 run tellraw @a [{"text":"[Loaded Combat+ v1.1.1]","color":"dark_green"}]
execute if score $install complus_cooldown matches 0 run tellraw @a [{"text":"[Failed to load Combat+]","color":"dark_red"}]

#resourcepack
tellraw @a [{"translate":"Looks like you don't have the resourcepack for Combat+. You can download that [here].","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/CombatPlus/releases"}}]
