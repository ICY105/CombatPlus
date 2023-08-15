
scoreboard players set #install complus.cooldown 0

# check for 1.20
execute store result score #minecraft.version complus.cooldown run data get entity @p DataVersion
execute unless score #minecraft.version complus.cooldown matches 3463.. run scoreboard players set #install complus.cooldown -1
execute if score #install complus.cooldown matches -1 run tellraw @a [{"text":"Error: Combat+ v"},{"score":{"name":"#complus.ver.major","objective":"load.status"}},{"text":","},{"score":{"name":"#complus.ver.minor","objective":"load.status"}},{"text":","},{"score":{"name":"#complus.ver.fix","objective":"load.status"}},{"text":" requires Minecraft +1.20 - Click [here] to download alternate versions.","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/CombatPlus/releases"}}]

# mark as installed
execute if score #install complus.cooldown matches 0 run scoreboard players set #install complus.cooldown 1

# resourcepack
tellraw @a [{"translate":"text.complus.resourcepack","color":"red","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/CombatPlus/releases"},"fallback":"Looks like you don't have the Combat+ Resourcepack. You can download that [here]."}]
