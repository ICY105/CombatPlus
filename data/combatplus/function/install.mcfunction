
scoreboard players set #install combatplus.cooldown 0

# check for 1.21.4
execute store result score #minecraft.version combatplus.cooldown run data get entity @p DataVersion
execute unless score #minecraft.version combatplus.cooldown matches 4189.. run scoreboard players set #install combatplus.cooldown -1
execute if score #install combatplus.cooldown matches -1 run tellraw @a [{"text":"Error: Combat+ v"},{"score":{"name":"#combatplus.ver.major","objective":"load.status"}},{"text":","},{"score":{"name":"#combatplus.ver.minor","objective":"load.status"}},{"text":","},{"score":{"name":"#combatplus.ver.fix","objective":"load.status"}},{"text":" requires Minecraft +1.20 - Click [here] to download alternate versions.","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/CombatPlus/releases"}}]

# mark as installed
execute if score #install combatplus.cooldown matches 0 run scoreboard players set #install combatplus.cooldown 1

# resourcepack
tellraw @a [{"translate":"text.combatplus.resourcepack","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/CombatPlus/releases"},"fallback":"Looks like you don't have the Combat+ Resourcepack. You can download that [here]."}]
