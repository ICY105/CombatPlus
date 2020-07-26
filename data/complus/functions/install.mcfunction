
scoreboard players set $install complus_cooldown 1

#check for 1.15
function complus:utils/check_version
execute if score $install.ver complus_cooldown matches ..15 run scoreboard players set $install complus_cooldown 0
execute if score $install.ver complus_cooldown matches ..15 run tellraw @a [{"text":"Error: This version of Combat+ requires Minecraft +1.16. Click [here] to download the older versions.\n","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/CombatPlus/releases"}}]

#check DU
execute unless score $du.ver load matches 2020000.. run scoreboard players set $install complus_cooldown 0
execute unless score $du.ver load matches 2020000.. run tellraw @a [{"text":"Error: Combat+ requires Datapack Utilities version +2.2.0. You can download that [here].\n","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Datapack-Utilities/releases"}}]

#print install message
execute if score $install complus_cooldown matches 1 run tellraw @a [{"text":"[Loaded Combat+ v1.2.0]","color":"dark_green"}]
execute if score $install complus_cooldown matches 0 run tellraw @a [{"text":"[Failed to load Combat+]","color":"dark_red"}]

#resourcepack
tellraw @a [{"translate":"Looks like you don't have the resourcepack for Combat+. You can download that [here].","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/CombatPlus/releases"}}]
