
# scoreboard objectives
scoreboard objectives add combatplus.coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add combatplus.cooldown dummy

# version
scoreboard players set #combatplus.ver.major load.status 2
scoreboard players set #combatplus.ver.minor load.status 0
scoreboard players set #combatplus.ver.fix load.status 0

# install message
schedule function combatplus:install 2s
