
# scoreboard objectives
scoreboard objectives add combatplus.data dummy
scoreboard objectives add combatplus.uuid dummy
scoreboard objectives add combatplus.cooldown dummy
scoreboard objectives add combatplus.cooldown.pause dummy
scoreboard objectives add combatplus.coas minecraft.used:minecraft.carrot_on_a_stick

# constants
scoreboard players set #cons.2 combatplus.data 2
scoreboard players set #cons.5 combatplus.data 5
scoreboard players set #cons.8 combatplus.data 8
scoreboard players set #cons.9 combatplus.data 9
scoreboard players set #cons.10 combatplus.data 10
scoreboard players set #cons.20 combatplus.data 20
scoreboard players set #cons.50 combatplus.data 50
scoreboard players set #cons.150 combatplus.data 150

# version
scoreboard players set #combatplus.ver.major load.status 2
scoreboard players set #combatplus.ver.minor load.status 1
scoreboard players set #combatplus.ver.fix load.status 0

# install message
schedule function combatplus:install 2s
