
# save uuid if needed
execute unless score @s combatplus.uuid matches -2147483648.. store result score @s combatplus.uuid run data get entity @s UUID[0]

# result cooldown if item changed (ie. changed slots), then run attack styles
tag @s remove combatplus.cooldown_triggered
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{combatplus:{}}] run function combatplus:player/weapon_tick
execute if entity @s[tag=combatplus.active_cooldown] unless items entity @s weapon.mainhand *[minecraft:custom_data~{combatplus:{}}] run function combatplus:player/weapon_end
