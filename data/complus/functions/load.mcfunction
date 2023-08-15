
# scoreboard objectives
scoreboard objectives add complus.coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add complus.cooldown dummy

# version
scoreboard players set #complus.ver.major load.status 2
scoreboard players set #complus.ver.minor load.status 0
scoreboard players set #complus.ver.fix load.status 0

# install message
schedule function complus:install 2s
